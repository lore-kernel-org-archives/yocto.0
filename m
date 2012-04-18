Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B68FEE01403
	for <yocto@yoctoproject.org>; Wed, 18 Apr 2012 04:57:23 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 41C1AF8123C; Wed, 18 Apr 2012 05:57:23 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id A4E00F811DC;
	Wed, 18 Apr 2012 05:57:21 -0600 (MDT)
Message-ID: <4F8EAC21.1030905@mlbassoc.com>
Date: Wed, 18 Apr 2012 05:57:21 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:11.0) Gecko/20120329 Thunderbird/11.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <24d96cc9.1a1d6.136c536bdf4.Coremail.caterwaul@163.com>
In-Reply-To: <24d96cc9.1a1d6.136c536bdf4.Coremail.caterwaul@163.com>
Subject: Re: problem about package and subpackage
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 18 Apr 2012 11:57:23 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-04-18 05:29, caterwaul wrote:
> Hi,
>
> I wanted to add dhcp(4.2.0) into my image. And I added "dhcp" into IMAGE_INSTALL of my image's bb file. After I runing bitbake, the dhcp package is normally fetched and compiled
> and so on. But during do_rootfs bitbake reported as follow:
> Processing dhcp...
> Unable to find package dhcp (dhcp)!
> ERROR: Function 'do_rootfs' failed
>
> I note that in /meta/recipes-connectivity/dhcp/dhcp4.inc the dhcp package is split into 4 subpackages(PACKAGES += "dhcp-server dhcp-client dhcp-relay dhcp-omshell"). Now If I
> remove "dhcp" from IMAGE_INSTALL and add these 4 subpackages' name into IMAGE_INSTALL and run bitbake AGAIN, they can be normally added into my final image.
>
> I've tried to modify last part of dhcp4.inc as follow: But bitbake still reported "Unable to find package dhcp"
> FILES_${PN} = ""
> FILES_${PN} += "${sbindir}/dhcpd ${sysconfdir}/init.d/dhcp-server ${sysconfdir}/default/dhcp-server ${sysconfdir}/dhcp/dhcpd.conf"
> FILES_${PN} += "${sbindir}/dhcrelay ${sysconfdir}/init.d/dhcp-relay ${sysconfdir}/default/dhcp-relay"
> FILES_${PN} += "${base_sbindir}/dhclient ${base_sbindir}/dhclient-script ${sysconfdir}/dhcp/dhclient.conf"
> FILES_${PN} += "${bindir}/omshell"
> RDEPENDS_${PN} = "bash"
>
> So How should I config bitbake to get my image with dhcp by running bitbake ONLY ONCE?

There is no "dhcp" package, only dhcp-client, dhcp-relay, dhcp-server.
Pick the functionality you need and use the appropriate package(s)

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

