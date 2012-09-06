Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1E17E0027F
	for <yocto@yoctoproject.org>; Thu,  6 Sep 2012 12:22:40 -0700 (PDT)
Received: from [109.224.129.17] (helo=macbook-pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>)
	id 1T9hei-0004ru-Mv; Thu, 06 Sep 2012 20:22:24 +0100
Mime-Version: 1.0 (Apple Message framework v1278)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <OF2E6500D3.0EB341C7-ON87257A71.005A2207-85257A71.005A8DF2@us.ibm.com>
Date: Thu, 6 Sep 2012 20:22:22 +0100
Message-Id: <63A89E26-B1A6-4F5D-86E2-11971A4C4CC8@keylevel.com>
References: <OF2E6500D3.0EB341C7-ON87257A71.005A2207-85257A71.005A8DF2@us.ibm.com>
To: James Macon <macon@us.ibm.com>
X-Mailer: Apple Mail (2.1278)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hxhsvr03.internetintuitive.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: yocto@yoctoproject.org
Subject: Re: Where is PREFERRED_VERSION_linux-yocto_qemux86 used?
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
X-List-Received-Date: Thu, 06 Sep 2012 19:22:41 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_7F4241D5-638E-4021-8E06-4370896FC3AB"

--Apple-Mail=_7F4241D5-638E-4021-8E06-4370896FC3AB
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

On 6 Sep 2012, at 17:29, James Macon wrote:

> Inside of poky.conf there is a variable =
PREFERRED_VERSION_linux-yocto_qemux86 ?=3D "3.0%"=20
>  =20
> I assume linux-yocto is the package name and qemux86 is the machine =
name.=20
>=20
> I can't find where any references =
PREFERRED_VERSION_linux-yocto_qemux86 are in the build. It is probably =
the result of multiple appends but I haven't been able to find it.=20
>=20
> I would like to know where the appends are and who uses it.=20

You just need to know how to break the name down:

1) 'linux-yocto' is what will be built;
2) when the MACHINE is 'qemux86'.

So, PREFERRED_VERSION_linux-yocto_qemux86 ?=3D "3.0%" says that the =
'linux-yocto_3.0x' kernel recipe (look in meta/recipes-kernel/linux) is =
the preferred kernel to build for the 'qemux86' machine.

bitbake knows how to extract the parts that follow PREFERRED_VERSION =
(and similar), so you won't find direct references to =
PREFERRED_VERSION_linux-yocto_qemux86.

I'm sure someone will be along to explain that better shortly...

Chris Tapp

opensource@keylevel.com
www.keylevel.com




--Apple-Mail=_7F4241D5-638E-4021-8E06-4370896FC3AB
Content-Transfer-Encoding: 7bit
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style="word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-space; "><div><div>On 6 Sep 2012, at 17:29, James Macon wrote:</div><br class="Apple-interchange-newline"><blockquote type="cite"><font size="2" face="sans-serif">Inside of poky.conf there is a variable
</font><font size="2" face="Courier New">PREFERRED_VERSION_linux-yocto_qemux86
?= "3.0%"</font>
<br><font size="2" face="sans-serif">&nbsp;</font>
<br><font size="2" face="sans-serif">I assume linux-yocto is the package
name and qemux86 is the machine name. </font>
<br>
<br><font size="2" face="sans-serif">I can't find where any references </font><font size="2" face="Courier New">PREFERRED_VERSION_linux-yocto_qemux86</font><font size="2" face="sans-serif">
are in the build. It is probably the result of multiple appends but I haven't
been able to find it. </font>
<br>
<br><font size="2" face="sans-serif">I would like to know where the appends
are and who uses it.</font>
<br></blockquote><br></div><div>You just need to know how to break the name down:</div><div><br></div><div>1) 'linux-yocto' is what will be built;</div><div>2) when the MACHINE is 'qemux86'.</div><div><br></div><div>So,&nbsp;PREFERRED_VERSION_linux-yocto_qemux86 ?= "3.0%" says that the 'linux-yocto_3.0x' kernel recipe (look in meta/recipes-kernel/linux) is the preferred kernel to build for the 'qemux86' machine.</div><div><br></div><div>bitbake knows how to extract the parts that follow PREFERRED_VERSION (and similar), so you won't find direct references to&nbsp;PREFERRED_VERSION_linux-yocto_qemux86.</div><div><br></div><div>I'm sure someone will be along to explain that better shortly...</div><div><br></div><div apple-content-edited="true">
<span class="Apple-style-span" style="border-collapse: separate; color: rgb(0, 0, 0); font-family: Helvetica; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; font-size: medium; "><div>Chris Tapp</div><div><br></div><div><a href="mailto:opensource@keylevel.com">opensource@keylevel.com</a></div><div><a href="http://www.keylevel.com">www.keylevel.com</a></div><div><br></div></span><br class="Apple-interchange-newline">
</div>
<br></body></html>

--Apple-Mail=_7F4241D5-638E-4021-8E06-4370896FC3AB--
