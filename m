Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 02668E00C9F; Thu, 13 Dec 2018 05:26:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.42 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com
	[209.85.210.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69AC4E00C8F
	for <yocto@yoctoproject.org>; Thu, 13 Dec 2018 05:26:23 -0800 (PST)
Received: by mail-ot1-f42.google.com with SMTP id i20so1899057otl.0
	for <yocto@yoctoproject.org>; Thu, 13 Dec 2018 05:26:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=8otu+wXhtDoTxa2XxSuVchS+DjLt/3X5c3v+z4EOuak=;
	b=IOLRdKM4gYV3q0xgNJPOGoeNv4nf3m52N1Os8LGIRfwkb8zSZfVObyXBRaxr3uhOCg
	FLc9vydYuvTzSqfMhg25hsI4T4lvVLJEkgPU6jeA0OpDVrMQqnXgYsQPDmtwMnsgM0wk
	oZj1bdbuRfR/iymFmaPc+8NL98HbjovqXL+KUAQ+46hvHROGxG6SsMuRXYgRZrC0Wmnk
	R3DNTrir5DrdtKWcS2qAhVvMaoqaAoDr3brJMbVQ5f0M9fvdbDi7SutyINdvQdcdCgDw
	hnHTB8wh8DTvZKzHhSzqy6ytCDYXj2Xemt0S4F/Un/pcDZR70oI3eh+VbXq/9mYXtH+f
	1/5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=8otu+wXhtDoTxa2XxSuVchS+DjLt/3X5c3v+z4EOuak=;
	b=fAsprNeH//uc0+6YlFxBI19OS6EOJi4p8fyA3XtzWQkESJ1JhaXQZHHlCh9m+mZmcR
	2znexdPXYthhltXXlQ70ZSo2VBkNxLFUdatACNgxm9jJb6t4UjKHiAJZF0Sxg6CSpee5
	ABFj1EoGc0e2jBxpypakSM5PD8P6aJ7KMluXTG7EaUvjudbaUie9mrE34a+37NMgw0VR
	F1Rp/jsHAFre50PwFZzq/WEZMn8lx+n+turZShQpT9V/0pN99pkPEuXCztSrj60dqXMY
	kIV0YEZ39PE2fmol7GqgNR94aOvTqX1ecrxB2MLRJAv2UN5O8hFdcuGeTrO75hsCSm+0
	JWkA==
X-Gm-Message-State: AA+aEWZ2B4G/Plb8cyvzPiY/OhBjKLD/f3soriE7kqBPVqJLDQyn4433
	gTUgrKOsW0I0/Sg1MinphNMFrnX25Dpl9UzmXf0Xkg==
X-Google-Smtp-Source: AFSGD/Xtu9B/Xi6BQO7zNws8fsIfNyaJuAsen9qCRqqGupW0/UwDnZnlo6xobNF6E/O0vZNNDkPUuaxYtl5Rz+94z60=
X-Received: by 2002:a9d:5549:: with SMTP id h9mr15769668oti.83.1544707582840; 
	Thu, 13 Dec 2018 05:26:22 -0800 (PST)
MIME-Version: 1.0
References: <CAOT_U5YDEXHTHtbeb1Hhxvk5=7AufdpyT2u7L1TEpjYL8D0BAw@mail.gmail.com>
	<CALNvYWPWFE-egwTGvqiO36H9fi=YapkHZR+k9wKMsBYVff5vew@mail.gmail.com>
	<CAOT_U5YikyHbm=mtS4UgbO=Hm5DPaEqforUcw9-O+KpDF-Mszw@mail.gmail.com>
	<CALNvYWNk7vYj1J3euV-zqzYXDO7Bpcb7yszOJAjttD2ceKPqRA@mail.gmail.com>
In-Reply-To: <CALNvYWNk7vYj1J3euV-zqzYXDO7Bpcb7yszOJAjttD2ceKPqRA@mail.gmail.com>
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Thu, 13 Dec 2018 14:26:11 +0100
Message-ID: <CAOT_U5YGme6h9uR0xMb2e=jH9kU2Y9-fEcegucPpPa6tAhOzcg@mail.gmail.com>
To: =?UTF-8?Q?Erik_Bot=C3=B6?= <erik.boto@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Best practices for tokens/passwords that can't be versioned
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
X-List-Received-Date: Thu, 13 Dec 2018 13:26:24 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes! :)
That is what I ended up doing in the end, thanks.

Be Well,
Alan


On Thu, Dec 13, 2018 at 1:45 PM Erik Bot=C3=B6 <erik.boto@gmail.com> wrote:
>
> On Tue, Dec 11, 2018 at 1:44 PM Alan Martinovic
> <alan.martinovic@senic.com> wrote:
> >
> > Thanks Erik,
> > guess that could work to and seems cleaner than the env variables.
> >
> > It still leaves the question how to move that content into a static fil=
e.
> > For example if in the end the recipe should install a file with "super
> > secret" as the content.
> >
> > Example on the device at runtime:
> > cat /etc/config-passwords
> > super secret
> >
> > The only idea that come to mind is to do something like in the recipe:
> >
> >     set_secrets() {
> >         echo ${MYSECRETKEY} > ${IMAGE_ROOTFS}/etc/config-passwords
> >     }
> >     ROOTFS_POSTPROCESS_COMMAND +=3D " set_secrets;"
> >
> > But that seems like a bad practice because it "globalizes" the recipe l=
ogic.
> > It's no longer a matter of that recipe but something applied to the
> > whole rootfs.
>
> But couldn't you just place the creation of this secrets file inside a
> regular recipe?
>
> When I have config files that I want to place e.g. secret credentials
> into during build time I ship them with placeholders that I can then
> use sed to modify during e.g. do_install().
>
> E.g. point to file://myconfig in SRC_URI, and maybe myconfig looks
> something like:
> ... tons of options here
> username=3D###USERNAME###
> password=3D###PASSWORD###
> ... more config options here
>
> Then during do_install() I do something like:
>
> install -Dm0644 ${WORKDIR}/myconfig ${D}/etc/myconfig
> sed 's,###USERNAME###,${MYSECRETUSER},' -i ${D}/etc/myconfig
> sed 's,###PASSWORD###,${MYSECRETKEY},' -i ${D}/etc/myconfig
>
> That way it will be contained to a recipe and not be something you
> have to do in each image that wants to ship the secrets file.
>
> Cheers,
> Erik
>
> >
> > Be Well,
> > Alan

