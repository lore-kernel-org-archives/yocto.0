Return-Path: <srifenbark@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2196FE0091D; Thu, 28 Feb 2019 09:32:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.208.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (srifenbark[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com
	[209.85.208.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72342E00901
	for <yocto@yoctoproject.org>; Thu, 28 Feb 2019 09:32:33 -0800 (PST)
Received: by mail-ed1-f52.google.com with SMTP id f2so17655039edy.13
	for <yocto@yoctoproject.org>; Thu, 28 Feb 2019 09:32:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=3nlI84kEdgExjgkfnU2tL92VTrMmamZjxCrDmb7UTfY=;
	b=XCgnOlXjdQBw9krk/1zURZCir6VyfnpcTpisdJEvEWEGbi1+hdQdVOyPxsYrsOCj1k
	tw7dUHJ1DG4rFkykj/FlKwlaDV/zkXKuyidl++MIdTvh5h3MPyy0huWK0fM3cCaLBUnP
	f6UoVux5KB5eEZL91sw485V0zHm7Ywh/TLDwxrblpSciFsd7uwmI0nYAwz0t00rugTKe
	ihkrg7iocNIo+bhrKsTH6DarjtkZsrs7K7GxmbThH8ZQ4PoleJHttycSsjqtaOJHZ22n
	guK/lfSUevZNEfT7zrBmTWJdWpHrey51q1l42D+d7V5fIV5ysJcG2Yaf5xRT6uJP+GST
	hY8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=3nlI84kEdgExjgkfnU2tL92VTrMmamZjxCrDmb7UTfY=;
	b=Z7Dxi4vgkJidN+Dd3ySivNX5YuwnZX3IwxyuTBATMeoh5HfNE0bBheLWCib3VGbzJd
	IJlV9djl5v72TuV8h2NS1NijXM7K4eQeZmkAm2j3GAbK1DwG9N11xutWYGOSbmSczj6u
	WCXBKwIefqCVhn5h9XHGDGwQ1yQS8ubAZqD/uruH6mMbtQ+JKfMwyF8sWO7soRJB8Qjx
	3qiXySYcnZbk/FF0tyo6L8Q2ersuDU30qpzQfhE2RLgqXCJqA8BChMRVNdS+YgtZ/+KX
	fhRblEw1lMfwZbxjN9bbtjhUdHdkd4I9KlV4IELFyynaYB/YeYZKBY94VHevFPfF8ied
	C1Ng==
X-Gm-Message-State: APjAAAVOqFVsxI2kZIiBmDGTruaQoHvX2D+LO5P81sdfRtilrchdd/rc
	vK61V7Q+OJTycPGC82vXsDlSjcvJLIM23yjasAU=
X-Google-Smtp-Source: APXvYqzkNPz30Jt3ZWy0dW4Hzx+aSvqZXUM6KUosj/dNwPzn4IEJrkodvJtGtXIvtp4pCW4aqXBF1Y5BFUKpVPb9znY=
X-Received: by 2002:a50:8916:: with SMTP id e22mr629741ede.242.1551375152542; 
	Thu, 28 Feb 2019 09:32:32 -0800 (PST)
MIME-Version: 1.0
References: <SN2PR05MB27829108D4A8ED36D600A930C17E0@SN2PR05MB2782.namprd05.prod.outlook.com>
	<10f67545-7dac-9318-638f-78a164dcc5e5@googlemail.com>
In-Reply-To: <10f67545-7dac-9318-638f-78a164dcc5e5@googlemail.com>
From: Scott Rifenbark <srifenbark@gmail.com>
Date: Thu, 28 Feb 2019 09:32:21 -0800
Message-ID: <CAFNP8OsxiiWe+XijN60T9Pw09wDQZG2K46m_14oO1XyP6EuP8Q@mail.gmail.com>
To: Matthias Schoepfer <matthias.schoepfer@googlemail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: ROS support on yocto project
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
X-List-Received-Date: Thu, 28 Feb 2019 17:32:34 -0000
Content-Type: multipart/alternative; boundary="000000000000e17c5f0582f7ac37"

--000000000000e17c5f0582f7ac37
Content-Type: text/plain; charset="UTF-8"

On Thu, Feb 28, 2019 at 9:26 AM Matthias Schoepfer <
matthias.schoepfer@googlemail.com> wrote:

> Hi!
>
>
> Yes, there is, there is a meta-ros.
>
>
> For your convenience:
>
>
>
> https://discourse.ros.org/t/new-version-of-meta-ros-for-kinetic-distribution/2833
>
> https://github.com/bmwcarit/meta-ros
>
>
> It does work. BTW, afaik there is no yocto 3.9.0, 2.6.1 is last stable if
> I am not mistaken.
>
yes - see https://wiki.yoctoproject.org/wiki/Releases


> Regards,
>
>
>
>    Matthias
>
>
> On 2/21/19 9:26 AM, Carlos Pozos Ochoa wrote:
>
> I recently acquire a Renesas R Car M3 board which runs on an embedded
> linux image build by means of the Yocto project. We are currently using
> YOCTO 3.9.0. We are looking forward to implement ROS kinetic libraries on
> this embedded linux. Does the yocto project supports this libraries? In the
> case it does, is there any special process to install and run them? Or is
> it work as a normal linux distribution?
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000e17c5f0582f7ac37
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 28, 2019=
 at 9:26 AM Matthias Schoepfer &lt;<a href=3D"mailto:matthias.schoepfer@goo=
glemail.com">matthias.schoepfer@googlemail.com</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <p>Hi!</p>
    <p><br>
    </p>
    <p>Yes, there is, there is a meta-ros. <br>
    </p>
    <p><br>
    </p>
    <p>For your convenience:</p>
    <p><br>
    </p>
    <p><a class=3D"gmail-m_3696721635774807690moz-txt-link-freetext" href=
=3D"https://discourse.ros.org/t/new-version-of-meta-ros-for-kinetic-distrib=
ution/2833" target=3D"_blank">https://discourse.ros.org/t/new-version-of-me=
ta-ros-for-kinetic-distribution/2833</a></p>
    <p><a class=3D"gmail-m_3696721635774807690moz-txt-link-freetext" href=
=3D"https://github.com/bmwcarit/meta-ros" target=3D"_blank">https://github.=
com/bmwcarit/meta-ros</a><br>
    </p>
    <p><br>
    </p>
    <p>It does work. BTW, afaik there is no yocto 3.9.0, 2.6.1 is last
      stable if I am not mistaken.<br></p></div></blockquote><div>yes - see=
 <a href=3D"https://wiki.yoctoproject.org/wiki/Releases">https://wiki.yocto=
project.org/wiki/Releases</a><br></div><div> <br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex"><div bgcolor=3D"#FFFFFF"><p>
    </p>
    <p><br>
    </p>
    <p>Regards,</p>
    <p>=C2=A0 <br>
    </p>
    <p>=C2=A0=C2=A0 Matthias<br>
    </p>
    <p><br>
    </p>
    <div class=3D"gmail-m_3696721635774807690moz-cite-prefix">On 2/21/19 9:=
26 AM, Carlos Pozos Ochoa
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
     =20
      <div id=3D"gmail-m_3696721635774807690divtagdefaultwrapper" style=3D"=
font-size:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-serif" d=
ir=3D"ltr">
        <div>
          <p style=3D"margin:0px 0px 10.66px"><span style=3D"margin:0px;col=
or:rgb(33,33,33);line-height:107%;font-family:&quot;Segoe UI&quot;,sans-ser=
if;font-size:11.5pt" lang=3D"EN-US">I recently acquire a Renesas R Car M3 b=
oard
              which runs on an embedded linux image build by means of
              the Yocto project. We are currently using YOCTO 3.9.0. We
              are looking forward to implement ROS kinetic libraries on
              this embedded linux. Does the yocto project supports this
              libraries? In the case it does, is there any special
              process to install and run them? Or is it work as a normal
              linux distribution?</span><span style=3D"margin:0px" lang=3D"=
EN-US"></span></p>
        </div>
        <br>
      </div>
      <br>
      <fieldset class=3D"gmail-m_3696721635774807690mimeAttachmentHeader"><=
/fieldset>
    </blockquote>
  </div>

-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div></div>

--000000000000e17c5f0582f7ac37--
