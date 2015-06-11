Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DF063E009F6; Thu, 11 Jun 2015 03:27:34 -0700 (PDT)
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
	*      [209.85.220.178 listed in list.dnswl.org]
Received: from mail-qk0-f178.google.com (mail-qk0-f178.google.com
	[209.85.220.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4EB4E009C2
	for <yocto@yoctoproject.org>; Thu, 11 Jun 2015 03:27:31 -0700 (PDT)
Received: by qkhq76 with SMTP id q76so1133397qkh.2
	for <yocto@yoctoproject.org>; Thu, 11 Jun 2015 03:27:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=UTK8UKZguMl+I9aCBZdgZVppPXHi13TPwSi7UfKGhlw=;
	b=Cvpi75gjWCuD4/lIZ43Rf9Ydm+K7lLCJSdLaiJlDpyo+KROWrewdojwraQ+xSKd6aV
	uWweNDxj3ntPAvu6A/pEzEMl1WLvtdSAGMN2thdbAaQDXnA/Bs3ws71IdGx9ub7XtqHn
	LdbBCklhWXGzuQ+c7QW17puGJF3Hm/n7Y1y9mUAxpsnNy+/NzeHb/Fh+23qfzeNhfUsC
	9M9Jczl+rpUVlcnvvFuWUfvAB2Kf9g4IRj2MdFWoI1cuwbxxER0hYxPVhAyErolZzw95
	zD4ZtPyagVAoM0nOHKpOlG1VKxZW9iGwCOHFQaSrBqNag+BvItl8tvrZSQ7azWDELqob
	4akQ==
X-Gm-Message-State: ALoCoQkpy0zZUZDUby+ydkIUPe0Y0OYiocyNcFWQAhCNQRHLZWs+9PKsAJcr7Rhxf7btCkbUT9bq
X-Received: by 10.140.231.19 with SMTP id b19mr10469685qhc.22.1434018450213;
	Thu, 11 Jun 2015 03:27:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.231 with HTTP; Thu, 11 Jun 2015 03:27:09 -0700 (PDT)
In-Reply-To: <F38A866CD026F746A3BF0928A84397BE3A42B2EE@AZ-FFEXMB01.global.avaya.com>
References: <F38A866CD026F746A3BF0928A84397BE3A42B2EE@AZ-FFEXMB01.global.avaya.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 11 Jun 2015 11:27:09 +0100
Message-ID: <CAJTo0LZ8o=8KHZ=357AuNcF4-Y480t_jHCdbpfRev0nxy=Nqfw@mail.gmail.com>
To: "Bipnesh, Abhinav (Abhinav)" <abhinavbipnesh@avaya.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Merging of two recipes
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
X-List-Received-Date: Thu, 11 Jun 2015 10:27:34 -0000
Content-Type: multipart/alternative; boundary=001a11c12f0053a47005183b70c4

--001a11c12f0053a47005183b70c4
Content-Type: text/plain; charset=UTF-8

On 11 June 2015 at 10:54, Bipnesh, Abhinav (Abhinav) <
abhinavbipnesh@avaya.com> wrote:

> So I want to merge these both recipes to produce the same artificats as
> above but using a single recipe. So any thoughts how to do it.
>
>
Just add "tar" to PACKAGE_CLASSES and you'll get a tarball of every package
alongside the RPM.

(note that the tar packages are relatively untested but they're also very
simple so should still work)

Ross

--001a11c12f0053a47005183b70c4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 11 June 2015 at 10:54, Bipnesh, Abhinav (Abhinav) <span dir=3D"ltr">&lt;=
<a href=3D"mailto:abhinavbipnesh@avaya.com" target=3D"_blank">abhinavbipnes=
h@avaya.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><p clas=
s=3D"MsoNormal">So I want to merge these both recipes to produce the same a=
rtificats as above but using a single recipe. So any thoughts how to do it.=
<u></u><u></u></p>
<p class=3D"MsoNormal"></p></blockquote></div><br>Just add &quot;tar&quot; =
to PACKAGE_CLASSES and you&#39;ll get a tarball of every package alongside =
the RPM.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extr=
a">(note that the tar packages are relatively untested but they&#39;re also=
 very simple so should still work)</div><div class=3D"gmail_extra"><br></di=
v><div class=3D"gmail_extra">Ross</div></div>

--001a11c12f0053a47005183b70c4--
