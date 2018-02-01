Return-Path: <smith-f@gmx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D63ACE00DA9; Thu,  1 Feb 2018 04:08:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE, MIME_HTML_ONLY,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (smith-f[at]gmx.de)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.227.15.19 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.7 MIME_HTML_ONLY BODY: Message only has text/html MIME parts
X-Greylist: delayed 303 seconds by postgrey-1.32 at yocto-www;
	Thu, 01 Feb 2018 04:08:03 PST
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 365E3E00C10
	for <yocto@yoctoproject.org>; Thu,  1 Feb 2018 04:08:03 -0800 (PST)
Received: from [213.182.151.226] ([213.182.151.226]) by
	3c-app-gmx-bs66.server.lan (via HTTP); Thu, 1 Feb 2018 13:02:59 +0100
MIME-Version: 1.0
Message-ID: <trinity-0d7d4d84-eeb2-4307-a506-329382201d9c-1517486579687@3c-app-gmx-bs66>
From: "Frank Smith" <smith-f@gmx.de>
To: yocto@yoctoproject.org
Date: Thu, 1 Feb 2018 13:02:59 +0100
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:BUBOeuNSRxzEmG6wLcG6XQ37QDhyt7zL6vFeh6+sREJ
	pKYy2cXfiL19x4RI6b4Ttd1dEOFC+YdFmWj1c6CXHft1YtKNfA
	Ed1hFha2/buMg4+hQ1+R1cWFs9ilqeUj8s0FwsyhhpA3rYS2T6
	foVVmf3EbDdGLgTbsP4BpkFf+o0MsJZhATx87j6nl1vNuYu3ap
	ZGMasMez0ztQZ6nbVuNKq1bmzNqmweTDifudB4pYsKCzGyCn+w
	pKh6CRmubXDJvZSEnf3Lp63EuhwOI5saytlBymspCsf9v7Eeu8 go+QlE=
X-UI-Out-Filterresults: notjunk:1;V01:K0:Cr3tPWelEDg=:JtxYM60KKERPq9S5uCrXSf
	VKQD78F9FHMoVHV6JsCZn0x2tR1kfo6efoMT564B0gEhoJWqJNWpOtWfrLIAn/7VCEmd7BomR
	Fb79yMeVNweRScbxc092azo9J5bzVJe2yga0qTu10NHI4XoiSwCX7UjiplAEzBSXtQePQsjLN
	lqN5iBuLDaqTs3VnPzfoyQ3wTh2JwNOph26zUTf0PXhBsL75oCeDniWXIcYPABWiLbCXmDqD2
	mDElxOJyrRwjJeIy+3Xs4GSG9UYLEJpXBThXQP6bW481VAuM+zjts5krRsseWLfCFCsORd1c/
	kKcmHddvjFTcb22R7AO5D7yfEfoGZjda0sQTUvuUlkfnEWpJnYQBNJIZhDrHLGpj9hO7X4Rcp
	rlA3Vm6abl1C3rnGYBVC7aMr8TzgImeGLsynTIvDfSIN36ySgXY91wVPHiWN9KMJ7hp055nf3
	AdbvRgbh4hXUsPeWjuUmBo7JP8hBcI9jdXAChyKf+ieF37V+j5C2
X-Mailman-Approved-At: Fri, 02 Feb 2018 11:16:02 -0800
Subject: How to create lighttpd with minimal configure options?
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
X-List-Received-Date: Thu, 01 Feb 2018 12:08:04 -0000
Content-Type: text/html; charset=UTF-8

<html><head></head><body><div style="font-family: Verdana;font-size: 12.0px;"><div style="font-family: Verdana;font-size: 12.0px;">
<div>I want to create a minimal lighttpd package as small as possible. Therefore I created a bbappendfile with extra configure flags. As follows. But the changes seems to not have any effect at all. The size of my minimal rootfs.jffs2 increases from 3MB to 5.1MB.</div>

<div>&nbsp;</div>

<div>meta-iris/recipes-extended/lighttpd/lighttpd_%.bbappend</div>

<div>&nbsp;</div>

<div>
<div>LICENSE = &quot;BSD&quot;</div>

<div>&nbsp;</div>

<div>EXTRA_OECONF += &quot;--enable-ipv6&quot;<br/>
EXTRA_OECONF += &quot;--with-zlib&quot;<br/>
EXTRA_OECONF += &quot;--without-openssl&quot;</div>

<div>&nbsp;</div>

<div>How to build a minimal lighttpd package? I was also thinking about disabling unused modules, but how?</div>

<div>&nbsp;</div>

<div>Maybe I did not really understand, how to enable the ./configure options. Is this the right way to configure with an option?</div>

<div>&nbsp;</div>

<div>PACKAGECONFIG ??= &quot;openssl pcre zlib &#92;<br/>
&nbsp;&nbsp;&nbsp; [..]<br/>
&quot;</div>

<div>PACKAGECONFIG[openssl] = &quot;--with-openssl,--without-openssl,openssl&quot;</div>

<div>&nbsp;</div>

<div>EXTRA_OECONF += &quot;--without-openssl&quot;</div>
</div>
</div></div></body></html>

