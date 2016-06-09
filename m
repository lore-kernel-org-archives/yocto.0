Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1E6F3E00D54; Thu,  9 Jun 2016 08:48:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.176 listed in list.dnswl.org]
Received: from mail-io0-f176.google.com (mail-io0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3533E00D23
	for <yocto@yoctoproject.org>; Thu,  9 Jun 2016 08:48:23 -0700 (PDT)
Received: by mail-io0-f176.google.com with SMTP id o189so41505947ioe.2
	for <yocto@yoctoproject.org>; Thu, 09 Jun 2016 08:48:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=GNZB4LL6djfwOvuKyOA+N1PQG0+1MvQyRs2DFmJSNp8=;
	b=0unE7/PCydxPJET/catsq4NvVELtTj3qFH+B0qVZNu6RQR3npzZM2A9Sj/Q1Kcy8ch
	CxjSy87dOWgJCsR8cC5ej9LJsf6fv/wAiJl5urIHcZ6VTPYsqoO8wTquDd6DScj5fRUJ
	vo35kyzvdqsNHivBY2v2R/9vBC4eKyNk9Adu2aq+4J8BxtVsfJBzoIr4VwSI2gxKN7Lf
	lewqoR3cOFYR8S5fjqjq3VLXstYq2C+hzomQYZI8Df5EYJZFbDBlnrMqI4agRWzAm+NQ
	qb4FahsB1P8ZP6LOxB4RbOkbPSsZdo5Me+M8OjAESbvNp8dpKwFtRY6f4ftQntycV+v6
	m8/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=GNZB4LL6djfwOvuKyOA+N1PQG0+1MvQyRs2DFmJSNp8=;
	b=ckQWsCMzTs7eVQikIgcH/qpKz44XnI67npaD7shAxJAM1JoGbYsl9egbLrYw5VnjQ2
	Ohh+JcQqu8+FjotpYsjI4xqBBbTWkEMi2ZoMOeqMAVKWVI4Mr0xvZozoRgRhnMMx9m90
	LqLbrk73tGAGleU8iXQBkwPhlzMb/dKOYN88kboR6O+VtNp3JH1c6cTBp7PTSNTiH6Fa
	Q63ZOegUrJMdL+JjeKYA6ccrZJfxoSz49EPZOK3+423+cOuepvqSGR94S1zm9ZOZLSuq
	I7GlJcPYJ9dR5bDWLd1OY9w+uO0LAtu0bEEoWifBHnmaEFFL/MXxLH+OT3cPzwV5Gzej
	y3Dw==
X-Gm-Message-State: ALyK8tJHe1e6kW6pFfZj/LZE+Qnv9HnD19RM9H7lakFpEExX3jtqHUwCrhvXzt6jBX7nxlbZ8QdFADwLE4Y17C90
X-Received: by 10.107.138.201 with SMTP id c70mr17664641ioj.148.1465487302343; 
	Thu, 09 Jun 2016 08:48:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.6 with HTTP; Thu, 9 Jun 2016 08:48:02 -0700 (PDT)
In-Reply-To: <111ACD726EC3464BAED310F5EA7BEBDA5FD845@RCHEXMBP1.fnc.net.local>
References: <111ACD726EC3464BAED310F5EA7BEBDA5FD845@RCHEXMBP1.fnc.net.local>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 9 Jun 2016 16:48:02 +0100
Message-ID: <CAJTo0LZePKfYZK+8Zkv6pGsaOXx_DsKsF-5ROSV7Kh+Y6BrG8w@mail.gmail.com>
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
X-List-Received-Date: Thu, 09 Jun 2016 15:48:27 -0000
Content-Type: multipart/alternative; boundary=001a113e8e6a145d200534da5a1c

--001a113e8e6a145d200534da5a1c
Content-Type: text/plain; charset=UTF-8

On 9 June 2016 at 16:13, Rajasekaran, Monica <
Monica.Rajasekaran@us.fujitsu.com> wrote:

> I am new to the Yocto project. Could someone please give me information on
> how to install openvswitch ? I have already done the same in other Linux
> OSs but no idea on how to do the same for Yocto.
>
>
The meta-virtualization layer (
http://layers.openembedded.org/layerindex/branch/master/layer/meta-virtualization/)
has a recipe for openvswitch, so add that to your bblayers.conf and add the
packages you need to your image.

Ross

--001a113e8e6a145d200534da5a1c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 9 June 2016 at 16:13, Rajasekaran, Monica <span dir=3D"ltr">&lt;<a href=
=3D"mailto:Monica.Rajasekaran@us.fujitsu.com" target=3D"_blank">Monica.Raja=
sekaran@us.fujitsu.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-=
color:rgb(204,204,204);border-left-style:solid;padding-left:1ex"><p class=
=3D"MsoNormal">I am new to the Yocto project. Could someone please give me =
information on how to install openvswitch ? I have already done the same in=
 other Linux OSs but no idea on how to do the same for Yocto.<u></u><u></u>=
</p>
<p class=3D"MsoNormal"></p></blockquote></div><br>The meta-virtualization l=
ayer (<a href=3D"http://layers.openembedded.org/layerindex/branch/master/la=
yer/meta-virtualization/">http://layers.openembedded.org/layerindex/branch/=
master/layer/meta-virtualization/</a>) has a recipe for openvswitch, so add=
 that to your bblayers.conf and add the packages you need to your image.</d=
iv><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</di=
v></div>

--001a113e8e6a145d200534da5a1c--
