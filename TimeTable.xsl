<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
                <table id="Table" class="indent">
                    <thead>
                        <tr>
                            <th colspan="3">My Weekly Schedule</th>
                        </tr>
                        <tr>
                
                            <th>Day</th>
                            <th>Time</th>
                        </tr>
                    </thead> 
                    <tbody>
                        <xsl:for-each select="/Timetable/day">
                            <tr>
                                <td colspan="3">
                                    <xsl:value-of select="@name" />
                                </td>
                            </tr>
                            <xsl:for-each select="task">
                            <tr id="{position()}">
                                
                                <td>
                                    <xsl:value-of select="Type" />
                                </td>
                                <td align="right">
                                    <xsl:value-of select="Time" />
                                </td>
                            </tr>
                            </xsl:for-each>
                        </xsl:for-each>
                    </tbody>
                </table><br/>
    </xsl:template>
</xsl:stylesheet>