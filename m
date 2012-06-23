Return-Path: <kergoth@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD1BAE006D9
	for <yocto@yoctoproject.org>; Fri, 22 Jun 2012 18:29:15 -0700 (PDT)
Received: by lboj14 with SMTP id j14so5054835lbo.35
	for <yocto@yoctoproject.org>; Fri, 22 Jun 2012 18:29:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	bh=U4WzDLUfoUinTWT9KrPpBN1opi8IBqqGiq9Tc+PnUJ0=;
	b=Z/za4oTviMwTEuWeGnKbTTcEGXfz3cKG9MatVQipV+MadHEwGCrI+zQM3iRc1FJoqm
	7YyOzFFIkYXw1Z4nWWdspYU2JRu4x3Y085C0aDwM4HruhT1EeQVM5Fp01jYiJXPGy/ol
	hXKeMUi7Ezczd9ChBRjyU5eF1khjqCNbRX4Uif2/YViAuP5uEI/iZI8HS0ZsA6jI9mwp
	XjhSokaiTfJHiTwLAEDXEyelY8VojKyPSOmCwUAdAvMEOW+vsN3hPZX3EYgDOO5XmYsE
	wwr+cA7p1/luEjWKvBUVacRbZscLtk77fu1uS4L+5hSdHMkyTXRvbmtorEKmX8WygZjh
	rNHA==
Received: by 10.152.148.161 with SMTP id tt1mr4151007lab.4.1340414954389; Fri,
	22 Jun 2012 18:29:14 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.114.64.180 with HTTP; Fri, 22 Jun 2012 18:28:54 -0700 (PDT)
In-Reply-To: <1340207171.3727.0.camel@babel.joshhome>
References: <1340207171.3727.0.camel@babel.joshhome>
From: Chris Larson <clarson@kergoth.com>
Date: Fri, 22 Jun 2012 18:28:54 -0700
X-Google-Sender-Auth: ezzdnXEIBKpOPvSh8n6T1tNAVDY
Message-ID: <CABcZANmax+eu__f2vkyDrOZ=G_zX4XCMCfCO6cas7UfN6u_W1g@mail.gmail.com>
To: Joshua Immanuel <josh@hipro.co.in>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: default variables in a python task/function
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
X-List-Received-Date: Sat, 23 Jun 2012 01:29:16 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 20, 2012 at 8:46 AM, Joshua Immanuel <josh@hipro.co.in> wrote:
> Hello,
>
> Considering the following code snippet variants of a recipe which does
> the same job, I would like to clarify certain doubts regarding this.
>
> python __anonymous () {
> =C2=A0 =C2=A0 =C2=A0 =C2=A0pn_split =3D d.getVar('PN', True).split('-')
> =C2=A0 =C2=A0 =C2=A0 =C2=A0...
> }
>
> python __anonymous () {
> =C2=A0 =C2=A0 =C2=A0 =C2=A0import bb
> =C2=A0 =C2=A0 =C2=A0 =C2=A0pn_split =3D bb.data.getVar('PN', d, True).spl=
it('-')
> =C2=A0 =C2=A0 =C2=A0 =C2=A0...
> }
>
> In some .bbclass, 'bb' library is used without importing it. I find that
> the 'd' variable is an instance of DataSmart class in the bitbake
> library. Will this 'bb' and 'd' variables be available to all python
> tasks and functions?

'bb' and 'os' are always imported, automatically, by bitbake itself,
and as such are available in all python contexts. 'd' is available in
python tasks and anonymous python functions and in inline python
snippets, but *not* in event handlers. event handlers get their event
passed as 'e'.

> I also find that in global python functions such as 'get_imagecmds'
> defined in image_types.bbclass 'd' is got as a parameter. Can someone
> explain when the 'd' will be initialized? Will the instance of DataSmart
> (i.e the variable 'd') in bbclass differ from that of the recipe which
> inherited that class? In bitbake manual, example of global python
> functions are shown as accepting 'bb' and 'd' variables as its
> parameters. Can someone explain the right way of doing this.

Unlike 'bb' and 'os', 'd' is not available in def'd python functions,
only in tasks and anonymous functions and in inline python snippets.
As such, it needs to be passed in by the caller.

E.g.

def foo(d):
    # do something with d

FOO =3D "${@foo(d)}"
--=20
Christopher Larson

