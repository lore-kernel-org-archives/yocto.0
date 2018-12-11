Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CE8E6E00C1E; Tue, 11 Dec 2018 04:44:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.67 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
	[209.85.210.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 509C6E00C10
	for <yocto@yoctoproject.org>; Tue, 11 Dec 2018 04:44:15 -0800 (PST)
Received: by mail-ot1-f67.google.com with SMTP id k98so13871406otk.3
	for <yocto@yoctoproject.org>; Tue, 11 Dec 2018 04:44:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=asLXqDShp+4PtJkedFJEYruXsP0aqRHdHy31VkSATe8=;
	b=kZxzK4qz6fU80N8yaC3wA/vvHxOkneQEgtSt/3M2OcDa6eEkQUsPRj80SkYl1cwhF7
	et5swfNuCKHDPV8PmGSpwFT9xau7c4Dvjp8L44A3qHhSixHTIsmZMyRs7YTp5CMbtx2c
	HQVqrFEHQLb2bsuEVZFnrMMFVY54FrsjrkZX+MeH7unkAZSXbRERl9rX2pI0UAPHO4Gh
	30f/L68xcZB5zj1BvICdXYmHR6CtOhWQ7j+8GfusHVUFpcpH2GFfI7lgPqrGKaRZwCYh
	cIw8NItntxaUwRgl9oJ5ms4UUKPjhKaL+EPi96g0tCf6VKb3Ru09sYXTJTFLeyDWZOPa
	n6Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=asLXqDShp+4PtJkedFJEYruXsP0aqRHdHy31VkSATe8=;
	b=gX89rPvQiW0h7psNjRzWOw3YExdhRoZpFiEGYMyCA5q60tVY6DgQrNHYIICWAI5pxi
	412iu9rNr0wySQvO5B9JN/dNeLYkuUYBwLHs3uN/ce0Dl2ibbEZJC4GZz0ytVdeir3hR
	FIEtstn+Mu4Ox99zP7soW10ZgO8bAkGaqDTg4lWlNN1WFr3dfVRggN4eGvEcLBUeGEBN
	nMwNSA4XADvRmp3/gvqglhqIp0oSdes97HjTtNbNuWx7Xz56e2mMVnwf0FsVbDkL7ZwA
	cu0Fki1rW9A1mU3yuCYAtgaU2ilv0orJpuQyrgC3C9xDiAoFfti3UoWItlPDz4b1yi8C
	LNsw==
X-Gm-Message-State: AA+aEWY2RMqNb8ouRCTxEOl4IdXDXtN+dqqS+6FQjTtvBQte9c0S8Fvo
	3yZVeq2DIXq0L2GT8Bf4sdT3/0lkHJw/xXFRyz6alw==
X-Google-Smtp-Source: AFSGD/VEcL0i+ElAS1VygkJguCzM1vU1eq9fxdFPMuXBQ/wUjKHN5cFcGxiJjIdKNc9kG+luuhcrgmjSaWBjUkaraDY=
X-Received: by 2002:a9d:30d4:: with SMTP id r20mr11696881otg.277.1544532254605;
	Tue, 11 Dec 2018 04:44:14 -0800 (PST)
MIME-Version: 1.0
References: <CAOT_U5YDEXHTHtbeb1Hhxvk5=7AufdpyT2u7L1TEpjYL8D0BAw@mail.gmail.com>
	<CALNvYWPWFE-egwTGvqiO36H9fi=YapkHZR+k9wKMsBYVff5vew@mail.gmail.com>
In-Reply-To: <CALNvYWPWFE-egwTGvqiO36H9fi=YapkHZR+k9wKMsBYVff5vew@mail.gmail.com>
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Tue, 11 Dec 2018 13:44:03 +0100
Message-ID: <CAOT_U5YikyHbm=mtS4UgbO=Hm5DPaEqforUcw9-O+KpDF-Mszw@mail.gmail.com>
To: erik.boto@gmail.com
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
X-List-Received-Date: Tue, 11 Dec 2018 12:44:16 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks Erik,
guess that could work to and seems cleaner than the env variables.

It still leaves the question how to move that content into a static file.
For example if in the end the recipe should install a file with "super
secret" as the content.

Example on the device at runtime:
cat /etc/config-passwords
super secret

The only idea that come to mind is to do something like in the recipe:

    set_secrets() {
        echo ${MYSECRETKEY} > ${IMAGE_ROOTFS}/etc/config-passwords
    }
    ROOTFS_POSTPROCESS_COMMAND +=3D " set_secrets;"

But that seems like a bad practice because it "globalizes" the recipe logic=
.
It's no longer a matter of that recipe but something applied to the
whole rootfs.

Be Well,
Alan



On Tue, Dec 11, 2018 at 1:09 PM Erik Bot=C3=B6 <erik.boto@gmail.com> wrote:
>
> On Tue, Dec 11, 2018 at 12:55 PM Alan Martinovic
> <alan.martinovic@senic.com> wrote:
> > Seems like conf/local.conf could also offer a solution given that it's
> > a temporary
> > thing (per build setup), but didn't yet figure out a good mechanism.
>
> You could have a variable in the recipe and override that value in local.=
conf.
>
> Let's say your recipe is called myexample_git.bb in which you add
> something like this:
> MYSECRETKEY ?=3D ""
>
> Then this could be assigned from local.conf using something like:
> MYSECRETKEY_pn-myexample =3D "super secret"
>
> Cheers,
> Erik

