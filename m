Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7181E00815; Tue, 27 Jan 2015 07:59:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.182 listed in list.dnswl.org]
Received: from mail-qc0-f182.google.com (mail-qc0-f182.google.com
	[209.85.216.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3BC34E00753
	for <yocto@yoctoproject.org>; Tue, 27 Jan 2015 07:59:21 -0800 (PST)
Received: by mail-qc0-f182.google.com with SMTP id l6so12628160qcy.13
	for <yocto@yoctoproject.org>; Tue, 27 Jan 2015 07:59:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=dS3Weg9hLub6aC/4M1ILQyUpeGLkjph2/kwTp/xtYbE=;
	b=Ap6jwCCuKsyc+ovnVqndeIMSCBjwbUsGCV+oThvMbjR/KKe6tjt5TWD3RBK+UU7mDT
	Agbyp87JF3FAbg6FP0lmGgmgRq/sR652fFWI5e3QhUZFn6H1BiHH0A5ga1WQgwHXC5vn
	4bl35NLC9lzpgTcp93BiwKjXR5JF8Vprd7d7DXXWdd/SBioxMrsBDqTUWEomSNZ2gcu7
	h/fSoS39aJBcn3cBI5AyUyAjKE5VA4oTj8wY7MvhcbUpxNHdKRYA2eSZFzfZeewBVtS8
	xLAiwLDTJYdoXol5SVG8zAL5vs4amUgmvbjnaKRjlQ7gR/LFZrGJ1+51/jtb0PpWsCRA
	s3YA==
X-Gm-Message-State: ALoCoQnuzBzsSgi7dRLzAA4+IiTcVzRV9lmT57hm6jCHFHgrA7ILKYtDZNU/PSBMtCwpHTEhtvUW
X-Received: by 10.224.7.197 with SMTP id e5mr3334804qae.64.1422374360413; Tue,
	27 Jan 2015 07:59:20 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.96.166 with HTTP; Tue, 27 Jan 2015 07:59:00 -0800 (PST)
In-Reply-To: <CAAKMwiq2LU0p+5m03EVtzuVW_QCdNOg9a=Bh2NktM=ckoBpCDA@mail.gmail.com>
References: <CAAKMwiq2LU0p+5m03EVtzuVW_QCdNOg9a=Bh2NktM=ckoBpCDA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 27 Jan 2015 15:59:00 +0000
Message-ID: <CAJTo0LZDSg1ZD5QtvOJyaoNFuT4v=4S3dmNgGLJeLF=bGf7udA@mail.gmail.com>
To: kaiu@gmx.de
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: recipe for smstools
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
X-List-Received-Date: Tue, 27 Jan 2015 15:59:23 -0000
Content-Type: multipart/alternative; boundary=001a11c223f47d93d2050da456b6

--001a11c223f47d93d2050da456b6
Content-Type: text/plain; charset=UTF-8

Hi Kai,

On 27 January 2015 at 15:44, Kai Ulrich <kaiu@gmx.de> wrote:

> is there a recipe for smstools or smstools 3?
>

http://layers.openembedded.org/layerindex/branch/master/recipes/?q=smstools

Layer index says no.

Ross

--001a11c223f47d93d2050da456b6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">Hi Kai,</div><div class=3D"gmai=
l_extra"><br><div class=3D"gmail_quote">On 27 January 2015 at 15:44, Kai Ul=
rich <span dir=3D"ltr">&lt;<a href=3D"mailto:kaiu@gmx.de" target=3D"_blank"=
>kaiu@gmx.de</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(=
204,204,204);border-left-style:solid;padding-left:1ex"><div>is there a reci=
pe for smstools or smstools 3?<br></div></blockquote></div><br><a href=3D"h=
ttp://layers.openembedded.org/layerindex/branch/master/recipes/?q=3Dsmstool=
s">http://layers.openembedded.org/layerindex/branch/master/recipes/?q=3Dsms=
tools</a><br></div><div class=3D"gmail_extra"><br></div><div class=3D"gmail=
_extra">Layer index says no.</div><div class=3D"gmail_extra"><br></div><div=
 class=3D"gmail_extra">Ross</div></div>

--001a11c223f47d93d2050da456b6--
