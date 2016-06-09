Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3A2E8E00D72; Thu,  9 Jun 2016 15:12:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f176.google.com (mail-io0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1062EE00D69
	for <yocto@yoctoproject.org>; Thu,  9 Jun 2016 15:12:19 -0700 (PDT)
Received: by mail-io0-f176.google.com with SMTP id m62so50785612iof.0
	for <yocto@yoctoproject.org>; Thu, 09 Jun 2016 15:12:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=wL79HSnnyM4UO6mlA3PjJDZL0wmZ/dbo3TCiVRxwQ6Y=;
	b=TGPgT/1lqzZM8H8j0lfbhr7VzFhsqjyYMUBEKLSugH/04UjIFxCKkn+FyQlnAt4gHK
	PER5jbxY8Rn1LasuoB1dxnIwIdQkGROWIOjuqPMm3t5aFTPEgbysbqXusoHWMn8/IeTX
	xmXBTjDiNZ/wGp0pKab1Ij/7iCswmRlU79FVkvv3jP3gri8bF50UjgDxfi/5nEg2CBPy
	3LDdxJurWBon+NLqtXH5UJ5U5gd95kaYAVIT+UMkLQpmSKuXVuCQX9WRCIBt3JpDUP+q
	VhTjfd/fMnsi4rSzfDfuQ29ihXlLZ8U65CS4KwnzdVTPkF0zWvY2OLQYIemr0F5Oj8b1
	XeSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=wL79HSnnyM4UO6mlA3PjJDZL0wmZ/dbo3TCiVRxwQ6Y=;
	b=QGI29C+Nzyy2vSgrkxIOKe6sW/CKGol0+f7sZ4z2fuPR8Kkvsb3w7opyJctm0bRnm9
	pqqsg1jfxVxjNlUMOAMiXN6JJgOAbSuwDgStuKW1nsi1uPXl5WbTeIX08Whjv+qA/E5m
	iCANVsx8it5v2QP9tJNOAg5QOwSqmAnidrqgRjZ0zL3/E6PlTwf7htaZL8arTkoNAFBq
	gvePQ2yXSkU5CToJOmVpWzWT55iCFyFoKFGpAEJ1jmR/nP6w6HOJ99qj2KRO6Hk9J76I
	WDhrzisAgvGijiJNWm2sr0SPGOtjKjhrst4MqTTVGAW3tZ05wSxUbEnW2acJjN7cyDI2
	R2rQ==
X-Gm-Message-State: ALyK8tIR/0crPmeYQSTLUwrduCu2TyW8sxwhRlAvdieFtlvwZW5P9RtzWgHjsJJ8XHxQG5Y+pD0vaiBaGbCys3RW
X-Received: by 10.107.135.137 with SMTP id r9mr21738369ioi.133.1465510338668; 
	Thu, 09 Jun 2016 15:12:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.6 with HTTP; Thu, 9 Jun 2016 15:11:59 -0700 (PDT)
In-Reply-To: <111ACD726EC3464BAED310F5EA7BEBDA5FDCA9@RCHEXMBP1.fnc.net.local>
References: <111ACD726EC3464BAED310F5EA7BEBDA5FD845@RCHEXMBP1.fnc.net.local>
	<CAJTo0LZePKfYZK+8Zkv6pGsaOXx_DsKsF-5ROSV7Kh+Y6BrG8w@mail.gmail.com>
	<111ACD726EC3464BAED310F5EA7BEBDA5FDB96@RCHEXMBP1.fnc.net.local>
	<CAJTo0LYZeh4qAW4PmDzc6vtTfd=199mprK=w-AY66JmNdmdspw@mail.gmail.com>
	<111ACD726EC3464BAED310F5EA7BEBDA5FDBEF@RCHEXMBP1.fnc.net.local>
	<111ACD726EC3464BAED310F5EA7BEBDA5FDC66@RCHEXMBP1.fnc.net.local>
	<111ACD726EC3464BAED310F5EA7BEBDA5FDCA9@RCHEXMBP1.fnc.net.local>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 9 Jun 2016 23:11:59 +0100
Message-ID: <CAJTo0LZo1G5p3As9NbdTdW=W4rvpCS8quu3sR_OgW7mT729hjw@mail.gmail.com>
To: "Rajasekaran, Monica" <Monica.Rajasekaran@us.fujitsu.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Installing openvswitch
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
X-List-Received-Date: Thu, 09 Jun 2016 22:12:23 -0000
Content-Type: multipart/alternative; boundary=001a113ec84226c0880534dfb77c

--001a113ec84226c0880534dfb77c
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 9 June 2016 at 22:40, Rajasekaran, Monica <
Monica.Rajasekaran@us.fujitsu.com> wrote:

> I have openvswitch package installed in my image. But, I do not see a
> folder called =E2=80=9Copenvswitch-2.xx=E2=80=9D with all the source code=
 at all! I need
> the code to make changes. I see these:
>
>
You installed binary packages, not the sources.

If you want to edit and compile openvswitch on the target then just fetch
it using git and edit/compile/install using gcc and so on (adding tools-sdk
to IMAGE_FEATURES will give you a full toolchain to get this started).

Alternatively you can use devtool to edit on your build machine and deploy
updated binaries to your target.  The Development Manual covers this,
http://www.yoctoproject.org/docs/2.1/dev-manual/dev-manual.html#devtool-use=
-devtool-modify-to-enable-work-on-code-associated-with-an-existing-recipe
.

Ross

--001a113ec84226c0880534dfb77c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 9 June 2016 at 22:40, Rajasekaran, Monica <span dir=3D"ltr">&lt;<a href=
=3D"mailto:Monica.Rajasekaran@us.fujitsu.com" target=3D"_blank">Monica.Raja=
sekaran@us.fujitsu.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-=
color:rgb(204,204,204);border-left-style:solid;padding-left:1ex"><p class=
=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sans-serif=
;color:rgb(31,73,125)">I have openvswitch package installed in my image. Bu=
t, I do not see a folder called =E2=80=9Copenvswitch-2.xx=E2=80=9D with all=
 the source code at all! I need the code to make
 changes. I see these:<u></u><u></u></span></p>
<p class=3D"MsoNormal"></p></blockquote></div><br>You installed binary pack=
ages, not the sources.</div><div class=3D"gmail_extra"><br></div><div class=
=3D"gmail_extra">If you want to edit and compile openvswitch on the target =
then just fetch it using git and edit/compile/install using gcc and so on (=
adding tools-sdk to IMAGE_FEATURES will give you a full toolchain to get th=
is started).</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_=
extra">Alternatively you can use devtool to edit on your build machine and =
deploy updated binaries to your target.=C2=A0 The Development Manual covers=
 this,=C2=A0<a href=3D"http://www.yoctoproject.org/docs/2.1/dev-manual/dev-=
manual.html#devtool-use-devtool-modify-to-enable-work-on-code-associated-wi=
th-an-existing-recipe">http://www.yoctoproject.org/docs/2.1/dev-manual/dev-=
manual.html#devtool-use-devtool-modify-to-enable-work-on-code-associated-wi=
th-an-existing-recipe</a>.</div><div class=3D"gmail_extra"><br></div><div c=
lass=3D"gmail_extra">Ross</div></div>

--001a113ec84226c0880534dfb77c--
