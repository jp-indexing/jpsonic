<%@ include file="include.jsp" %>
<%@ page language="java" contentType="text/xml; charset=utf-8" pageEncoding="iso-8859-1"%>

<rss version="2.0">
    <channel>
        <title>Jpsonic Podcast</title>
        <link>${model.url}</link>
        <description>Jpsonic Podcast</description>
        <language>en-us</language>
        <image>
            <url>http://www.airsonic.org/pages/inc/img/airsonic_logo.png</url>
            <title>Jpsonic Podcast</title>
        </image>

        <c:forEach var="podcast" items="${model.podcasts}">
            <item>
                <title>${fn:escapeXml(podcast.name)}</title>
                <link>${model.url}</link>
                <description>Jpsonic playlist "${fn:escapeXml(podcast.name)}"</description>
                <pubDate>${podcast.publishDate}</pubDate>
                <enclosure url="${podcast.enclosureUrl}" length="${podcast.length}" type="${podcast.type}"/>
            </item>
        </c:forEach>

    </channel>
</rss>
