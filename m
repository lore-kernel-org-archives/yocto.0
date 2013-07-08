Return-Path: <brjerome.1@gmail.com>
Received: from mail-ee0-f52.google.com (mail-ee0-f52.google.com [74.125.83.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB587E01445
	for <yocto@yoctoproject.org>; Mon,  8 Jul 2013 10:15:45 -0700 (PDT)
Received: by mail-ee0-f52.google.com with SMTP id c50so3003356eek.25
	for <yocto@yoctoproject.org>; Mon, 08 Jul 2013 10:15:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=CWcxKh6oUQsAClr3C4ZBG/QwDKlRM0OOisQ/gHYwV0E=;
	b=0ct75biZL3XxZbi7fIFkYHXpIq7Htp5VmeJpmhlBjtliEinUxTzzJfH8oQ9Q5W0XZt
	RufyIZ9NBBt5D4Ghjn+cWyZoazm2STouiXNDOOkbBpvgYe2pseVXiZ9MZfBKeNXKeFX8
	8IMPPWOw7n67trrG3DjLvYrOhvv4wb5FVtYAFWMjR/+orvQylYcXainDjJOpOF/O/qZe
	bBQnklAi4/MIpyQurGn0czQJps1XOFcbzecxE4oJAqdVjmYJiaEZ8Dt+ik1pcG5EDftW
	CIWa1BgcD9h4ZLhCWKV2cykYyADhku85KvJkUzLQiPteXlBcQRSn7Ablo/Hw4PrMQP65
	lc8w==
MIME-Version: 1.0
X-Received: by 10.14.220.66 with SMTP id n42mr25725757eep.67.1373303743964;
	Mon, 08 Jul 2013 10:15:43 -0700 (PDT)
Received: by 10.15.108.200 with HTTP; Mon, 8 Jul 2013 10:15:43 -0700 (PDT)
In-Reply-To: <1FFB62CE8AEB0D4298B51122D8903E9619F0FEA3@IRSMSX104.ger.corp.intel.com>
References: <51D86559.7060903@gmail.com>
	<1FFB62CE8AEB0D4298B51122D8903E9619F0FEA3@IRSMSX104.ger.corp.intel.com>
Date: Mon, 8 Jul 2013 10:15:43 -0700
Message-ID: <CAHWZUV9n3APPb5zXFF2c+2XELZ8rgV5RaLo-X6e4GOcrGZKwxg@mail.gmail.com>
From: Norman Cheung <brjerome.1@gmail.com>
To: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Help with installing Eclipse ADT Plug-in
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
X-List-Received-Date: Mon, 08 Jul 2013 17:15:48 -0000
Content-Type: multipart/alternative; boundary=047d7b621c68d408a404e103315a

--047d7b621c68d408a404e103315a
Content-Type: text/plain; charset=ISO-8859-1

Thanks Alexandru.

I will try the headless build.  I wonder if there is an install log in
eclipse showing the list of missing components.

Norman


On Mon, Jul 8, 2013 at 6:48 AM, Georgescu, Alexandru C <
alexandru.c.georgescu@intel.com> wrote:

> Hi Norman,
>
> There may be some items that you have missed, or you can try another way
> by running a headless build and then trying to install the plugin. The
> headless build should be able to install the required items needed by the
> plugin.
> To run the headless build, you have to have the eclipse-poky source code
> (e.g.: git://git.yoctoproject.org/eclipse-poky) and then run the setup.sh
> script under the scripts folder.
>
> Regards,
> --
> Alexandru Georgescu
>
>
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:
> yocto-bounces@yoctoproject.org] On Behalf Of Norman Cheung
> Sent: Saturday, July 06, 2013 21:44
> To: yocto@yoctoproject.org
> Subject: [yocto] Help with installing Eclipse ADT Plug-in
>
> I followed the steps to install ADT plug-in in the Development Manual
> section 4.2.2.1.
>
> The error is:
> Cannot complete the install because one or more required items could not
> be found.
>    Software being installed: Yocto Project ADT Plug-in
> 1.4.0.201306120814 (org.yocto.sdk.feature.group 1.4.0.201306120814)
>
> In installing the pre-requisites, the only item that failed was RSE WincE
> Services (step 12 in 4.2.2.1.3).
>
> I also tried compile the plug-in from source same error.  How can I locate
> what items are missing?
>
> Thanks,
> Norman
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--047d7b621c68d408a404e103315a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Alexandru.<div><br></div><div style>I will try the =
headless build. =A0I wonder if there is an install log in eclipse showing t=
he list of missing components.</div><div style><br></div><div style>Norman<=
/div>
</div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Mon,=
 Jul 8, 2013 at 6:48 AM, Georgescu, Alexandru C <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:alexandru.c.georgescu@intel.com" target=3D"_blank">alexandru.c=
.georgescu@intel.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Hi Norman,<br>
<br>
There may be some items that you have missed, or you can try another way by=
 running a headless build and then trying to install the plugin. The headle=
ss build should be able to install the required items needed by the plugin.=
<br>

To run the headless build, you have to have the eclipse-poky source code (e=
.g.: git://<a href=3D"http://git.yoctoproject.org/eclipse-poky" target=3D"_=
blank">git.yoctoproject.org/eclipse-poky</a>) and then run the setup.sh scr=
ipt under the scripts folder.<br>

<br>
Regards,<br>
--<br>
Alexandru Georgescu<br>
<div><div class=3D"h5"><br>
<br>
-----Original Message-----<br>
From: <a href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yocto=
project.org</a> [mailto:<a href=3D"mailto:yocto-bounces@yoctoproject.org">y=
octo-bounces@yoctoproject.org</a>] On Behalf Of Norman Cheung<br>
Sent: Saturday, July 06, 2013 21:44<br>
To: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br=
>
Subject: [yocto] Help with installing Eclipse ADT Plug-in<br>
<br>
I followed the steps to install ADT plug-in in the Development Manual secti=
on 4.2.2.1.<br>
<br>
The error is:<br>
Cannot complete the install because one or more required items could not be=
 found.<br>
=A0 =A0Software being installed: Yocto Project ADT Plug-in<br>
1.4.0.201306120814 (org.yocto.sdk.feature.group 1.4.0.201306120814)<br>
<br>
In installing the pre-requisites, the only item that failed was RSE WincE S=
ervices (step 12 in 4.2.2.1.3).<br>
<br>
I also tried compile the plug-in from source same error. =A0How can I locat=
e what items are missing?<br>
<br>
Thanks,<br>
Norman<br>
<br>
<br>
</div></div>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br></div>

--047d7b621c68d408a404e103315a--
