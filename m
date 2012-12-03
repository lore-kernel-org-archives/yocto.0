Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 585A1E006C4
	for <yocto@yoctoproject.org>; Mon,  3 Dec 2012 11:13:50 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id E49DFF8122F; Mon,  3 Dec 2012 12:13:49 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 562A4F8122E;
	Mon,  3 Dec 2012 12:13:49 -0700 (MST)
Message-ID: <50BCF9EE.7020205@mlbassoc.com>
Date: Mon, 03 Dec 2012 12:13:50 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAE8H0+UH1A4hGLM4hkX_qvw-BD4Zt4eg_69G7OqyxmaSJJmRHA@mail.gmail.com>
In-Reply-To: <CAE8H0+UH1A4hGLM4hkX_qvw-BD4Zt4eg_69G7OqyxmaSJJmRHA@mail.gmail.com>
Subject: Re: dhcp-server and init scripts
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
X-List-Received-Date: Mon, 03 Dec 2012 19:13:50 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-12-03 12:01, r10kindsofpeople wrote:
> I seem to have figured out how to add the dhcp-server to my image, including my own dhcpd.conf and default-server files by creating a "dhcp_4.2.4-P1.bbappend" recipe.  Everything
> works, except the dhcp-server doesn't run on boot.
>
> If I login and run "update-rc.d dhcp-server defaults" on the target, then it creates the entries in /etc/rc0.d (etc) and the service starts on the next boot.
>
> The question is, how can I get bitbake to create those entries when it creates the image?  I'm open to completely different ways of going about this as well.  Looking at other
> recipes, I thought this recipe would do, but it doesn't:
>
> {named dhcp_4.2.4-P1.bbappend}
> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>
> inherit update-rc.d
>
> INITSCRIPT_NAME = "dhcp-server"
> INITSCRIPT_PARAMS = "defaults"
>
> # Not sure this is needed, since I'm not adding files, just replacing the default copies
> SRC_URI += "file://dhcpd.conf \
>                       file://default-server \
>                       "
> {end file}
>
> I'm using the 8.0 "danny" release with Crown-bay BSP.  The "layer.conf" file includes IMAGE_INSTALL_append = " dhcp-server" (among other things).
>
> Thanks in advance for any assistance you can offer,

You just missed one piece.  I have this working using these extra lines in my .bbappend:

inherit update-rc.d
INITSCRIPT_PACKAGES = "dhcp-server"
INITSCRIPT_NAME = "dhcp-server"
INITSCRIPT_PARAMS = "start 50 S . stop 50 0 6 1 ."

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

