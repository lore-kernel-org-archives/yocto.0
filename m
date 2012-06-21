Return-Path: <raj.khem@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66426E00723
	for <yocto@yoctoproject.org>; Thu, 21 Jun 2012 09:10:29 -0700 (PDT)
Received: by eekb45 with SMTP id b45so395718eek.35
	for <yocto@yoctoproject.org>; Thu, 21 Jun 2012 09:10:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=gy/AeXzBJ3y+npbejYZXtPZTYltR1ZHb+zsPvqueGNs=;
	b=rbOS1J31vdGZwxejG5yMUEIUExRVoZb9UcnWp1kRNUFx+V/hoh2KdqXoY9Fd1h9nas
	SqWE7ngy4sap87329aJYvpHDGDaJBR0DWigGzegAtHgyH0VW9zRKpC395RNazfuVNhIR
	Jw1V6BYpP9qPXK+hie8a50DVnWg+NHyDNBiLrX+kQABdVD1KyQQWoSJ+vLnRJq+dfOZS
	eAlUXPhzfL7TBnqDEKKOSAXizWFr8F3EVNVYvOOD2sDsM7YAC8gzsbbhi6r/igsC57IO
	Lk3cy9JUla+wmrhH180xbJl7Wi5EXtwBQmADlI5ugOy7W3PVP2zw+mB/IyubI/zJZLtw
	QFgw==
Received: by 10.14.119.202 with SMTP id n50mr6034737eeh.33.1340295028167; Thu,
	21 Jun 2012 09:10:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.219.71 with HTTP; Thu, 21 Jun 2012 09:09:57 -0700 (PDT)
In-Reply-To: <A932C833-018B-430E-874B-2281A3B80E64@gmail.com>
References: <A932C833-018B-430E-874B-2281A3B80E64@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 21 Jun 2012 09:09:57 -0700
Message-ID: <CAMKF1sozLtK1GP_vMn2UtAmi_+H12z5UOKaicxkjvNWQjBJUsg@mail.gmail.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Error: PATH contains '.' or '', which will break the build, please remove this.
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
X-List-Received-Date: Thu, 21 Jun 2012 16:10:29 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 21, 2012 at 8:25 AM, Elvis Dowson <elvis.dowson@gmail.com> wrot=
e:
> BBFILES ?=3D ""
> BBLAYERS ?=3D " \
> =C2=A0/tool/yocto/poky/meta \
> =C2=A0/tool/yocto/poky/meta-yocto \
> =C2=A0/tool/yocto/meta-openembedded/meta-oe \
> =C2=A0/tool/yocto/meta-xilinx \
> =C2=A0"
>
what does

bitbake -e <image> | grep -e "^BBPATH=3D"

show

