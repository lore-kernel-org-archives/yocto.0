Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6590BE00571; Wed,  7 Jan 2015 10:36:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f176.google.com (mail-pd0-f176.google.com
	[209.85.192.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7369E002F9
	for <yocto@yoctoproject.org>; Wed,  7 Jan 2015 10:36:25 -0800 (PST)
Received: by mail-pd0-f176.google.com with SMTP id r10so6192868pdi.7
	for <yocto@yoctoproject.org>; Wed, 07 Jan 2015 10:36:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=hmcln67MGAXCUAqKoBbFssTODtc0Q5efeK+P9e0rmpA=;
	b=J+xqk4xXDKBif43YllpLtmmuurYF02LMkfpXutY1lbnf94MdOzWefO/BTeeh8O3ofX
	qpbHVVwqlxPH9GlnRJBo/QoUljqQ/gd8RXk1ca9RNDpjSVfEeKYFEDYAZ8l6MpmJRHuQ
	EaEyMp4373ggCByybIOUQD0JCOl/862XJfpjl8VLFCNRMCRoQFs5KBIYJkfpYPmJO2T7
	Mr5J7FUyGjqxjPQ7wiONkDz4sJLpMtR5uvSSAPrQivZEAMQo8lHm78El6qwxGtuGO4o2
	sZm2vDvEL2vPGAnkaVsXhCxR4OGRADH3oC34/rqZ0HeIfPMilO9GNdKdmDOwAf37bLTr
	5cbQ==
X-Received: by 10.68.136.228 with SMTP id qd4mr7805103pbb.122.1420655784780;
	Wed, 07 Jan 2015 10:36:24 -0800 (PST)
Received: from ?IPv6:2601:9:3580:84c:8c9a:bf35:504a:eba1?
	([2601:9:3580:84c:8c9a:bf35:504a:eba1])
	by mx.google.com with ESMTPSA id a6sm2418041pbu.64.2015.01.07.10.36.23
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 07 Jan 2015 10:36:23 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 8.1 \(1993\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAE_REAuUO358xnPwCcaApwwcz_vb3sW60bouATcV4xBu_riAOg@mail.gmail.com>
Date: Wed, 7 Jan 2015 10:36:22 -0800
Message-Id: <573D0D80-1040-45E4-A918-32324FFAE45D@gmail.com>
References: <CAE_REAuUO358xnPwCcaApwwcz_vb3sW60bouATcV4xBu_riAOg@mail.gmail.com>
To: Gaurang Shastri <gmshastri@gmail.com>
X-Mailer: Apple Mail (2.1993)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Want to add native-gcc in SDK tar ball
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
X-List-Received-Date: Wed, 07 Jan 2015 18:36:27 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_A76DAB9A-EAF6-4F32-9402-FC54BD07F7CA"

--Apple-Mail=_A76DAB9A-EAF6-4F32-9402-FC54BD07F7CA
Content-Transfer-Encoding: 7bit
Content-Type: text/plain;
	charset=us-ascii


> On Jan 7, 2015, at 6:57 AM, Gaurang Shastri <gmshastri@gmail.com> wrote:
> 
> Hi,
> 
> Has anyone try to add native-gcc as part of SDK tarball ? Is it possible ?
> 
> My aim is to have "gcc" (along with cross-gcc) as part of SDK. 

you can add tools-dk to EXTRA_IMAGE_FEATURES in local.conf or some other
config metadata
then bitbake -cpopulate_sdk <your image>

> 
> Any pointer is appreciable.
> 
> Regards,
> Gaurang Shastri
> -- 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_A76DAB9A-EAF6-4F32-9402-FC54BD07F7CA
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Jan 7, 2015, at 6:57 AM, Gaurang Shastri &lt;<a =
href=3D"mailto:gmshastri@gmail.com" class=3D"">gmshastri@gmail.com</a>&gt;=
 wrote:</div><br class=3D"Apple-interchange-newline"><div class=3D""><div =
dir=3D"ltr" class=3D""><div class=3D""><div class=3D""><div =
class=3D"">Hi,<br class=3D""><br class=3D""></div>Has anyone try to add =
native-gcc as part of SDK tarball ? Is it possible ?<br class=3D""><br =
class=3D""></div>My aim is to have "gcc" (along with cross-gcc) as part =
of SDK. <br class=3D""></div></div></div></blockquote><div><br =
class=3D""></div><div>you can add tools-dk to&nbsp;<span =
style=3D"font-family: 'Liberation Mono';" class=3D"">EXTRA_IMAGE_FEATURES =
in&nbsp;</span><font face=3D"Liberation Mono" class=3D"">local.conf or =
some other</font></div><div><font face=3D"Liberation Mono" =
class=3D"">config metadata</font></div>then bitbake -cpopulate_sdk =
&lt;your image&gt;</div><div><br class=3D""><blockquote type=3D"cite" =
class=3D""><div class=3D""><div dir=3D"ltr" class=3D""><div class=3D""><br=
 class=3D"">Any pointer is appreciable.<br class=3D""><br =
class=3D""></div>Regards,<br class=3D"">Gaurang Shastri<br =
class=3D""></div>
-- <br class=3D"">_______________________________________________<br =
class=3D"">yocto mailing list<br class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a><br =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto<br =
class=3D""></div></blockquote></div><br class=3D""></body></html>=

--Apple-Mail=_A76DAB9A-EAF6-4F32-9402-FC54BD07F7CA--
