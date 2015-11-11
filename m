Return-Path: <Virgi200@gmx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A5BFE00B21; Wed, 11 Nov 2015 02:56:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE, MIME_HTML_ONLY,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (virgi200[at]gmx.de)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.7 MIME_HTML_ONLY BODY: Message only has text/html MIME parts
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.227.15.18 listed in list.dnswl.org]
X-Greylist: delayed 303 seconds by postgrey-1.32 at yocto-www;
	Wed, 11 Nov 2015 02:56:11 PST
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA45AE00B0B
	for <yocto@yoctoproject.org>; Wed, 11 Nov 2015 02:56:11 -0800 (PST)
Received: from [217.5.143.100] by 3capp-gmx-bs64.server.lan (via HTTP); Wed,
	11 Nov 2015 11:51:07 +0100
MIME-Version: 1.0
Message-ID: <trinity-4efc8622-e589-495f-82a5-acd54dc7dfca-1447239067296@3capp-gmx-bs64>
From: "Virgilia  Eigner" <Virgi200@gmx.de>
To: yocto@yoctoproject.org
Date: Wed, 11 Nov 2015 11:51:07 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <trinity-9b9a7186-a9d1-4ea3-a628-7a1e1e41e541-1447231599946@3capp-gmx-bs64>
References: <trinity-9b9a7186-a9d1-4ea3-a628-7a1e1e41e541-1447231599946@3capp-gmx-bs64>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K0:PR5DqHu1YA8ou2iKOwbnQ5ax22N3/uj1Wjo98iJOrqj
	DQzgach8iiQSYljTDjYTTQPGQbrbbLcASYw5Mduk7K800Uyjjc
	R0EFik0j6iS19AaYLdO73ucjQKxbFF3G/uOl/v+BYHCAPVc23d
	QDhRjI/DQPr96hHgOcJV+TYisXk7L/XyKgLVyLj5awYBc+P7tt
	tlFn9N9HVw+z2O26bBf06MSoXNbPgD5NvmXTYytEL+KwcIvUG1
	Gm1/vBnikhXcwGw7oYj4HxydP4rZIUcBnN1V3h22bU9WaPEniW RPnbzc=
X-UI-Out-Filterresults: notjunk:1;V01:K0:XpI8yj4OQaw=:ijnlSg08imebToN5641Qnw
	GsZFOTyKM3foWO5XrEMGGQcYnqsh6G2f3sHDDF2p5uLQvUmXEkM5GHS79xgqSWhcErdq8V6WA
	P3UuH5zcOM7Wdue+ipbnFW6aN+YF9y6Y/f2hNVsWmXtaZ+nBtMBm+Cax23rdtwKajN+cQf5Z2
	lOU47IC5aTJFscU7zthtrcoCFJRrSy/ymbP0pd0EjVacK9Ncl08SXgfu58EQ/ywO0qSm18FSX
	ZsFTy53FYUSBsp7EqKJfS2IWy6HrU3g3PPqag+ojxqMlnOsbP58NTIT7THu1iJO6XSA5XvKGk
	jj+fJ0ll/KzBsrSWpJCGTO446knI8HuSzCEimvbf0RSzcmfJKZqgJUtNYn7FXYFMhzRKyVi3w
	1Ngko4p3vvgWEJS3+7MsneNesda19glJ1QhA00ZRsp2Buujoyp2IKyzfiyEEY0aI7PxdPYoDm
	BdWtCQ/Xkg==
Subject: Re: external-toolchain
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 11 Nov 2015 10:56:15 -0000
Content-Type: text/html; charset=UTF-8

<html><head></head><body><div style="font-family: Verdana;font-size: 12.0px;"><div>&nbsp;
<div>
<div>ok i solved it by change TARGET_VENDOR = &quot;-e500v2&quot; in poky.conf.</div>

<div>&nbsp;</div>

<div>thanks</div>

<div>&nbsp;</div>

<div>&nbsp;</div>

<div>&nbsp;</div>

<div>&nbsp;</div>

<div name="quote" style="margin:10px 5px 5px 10px; padding: 10px 0 10px 10px; border-left:2px solid #C3D9E5; word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-space;">
<div style="margin:0 0 10px 0;"><b>Gesendet:</b>&nbsp;Mittwoch, 11. November 2015 um 09:46 Uhr<br/>
<b>Von:</b>&nbsp;&quot;Virgilia Eigner&quot; &lt;Virgi200@gmx.de&gt;<br/>
<b>An:</b>&nbsp;yocto@yoctoproject.org<br/>
<b>Betreff:</b>&nbsp;[yocto] external-toolchain</div>

<div name="quoted-content">
<div style="font-family: Verdana;font-size: 12.0px;">
<div>Hi,</div>

<div>to start with yoctoproject for my new developed hardware, i would like to use my own crosstool-NG.<br/>
Instead of this, i use YP Core - Dizzy 1.7.3 build-system and<br/>
to simplify i am using the sourcery-toolchain layer(meta-sourcery-master).<br/>
But now i had to recognize that the versions are not compatible.</div>

<div>Please have a look at the output if I build the project:<br/>
&nbsp;<br/>
&nbsp;&nbsp; &nbsp;Extern_Toolchain gcc path &#39; /home/x-tools/powerpc-e500v2-linux-gnuspe/bin/powerpc-poky-linux-gcc&#39; does not exist<br/>
&nbsp;<br/>
The section after bin/ is wrong,&nbsp; for the TARGET_SYS i need: powerpc-e500v2-linux-gnuspe<br/>
My question now, is it possible to chance the distro version temporary for the external-toolchain.<br/>
&nbsp;<br/>
thanks,</div>

<div>Virgilia</div>

<div>&nbsp;</div>
</div>
-- _______________________________________________ yocto mailing list yocto@yoctoproject.org <a href="https://lists.yoctoproject.org/listinfo/yocto" target="_blank">https://lists.yoctoproject.org/listinfo/yocto</a></div>
</div>
</div>
</div></div></body></html>

