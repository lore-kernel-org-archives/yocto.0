Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 843D9E008C1; Sun, 17 Jan 2016 08:29:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
Received: from mail-io0-f174.google.com (mail-io0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A7A2E0088C
	for <yocto@yoctoproject.org>; Sun, 17 Jan 2016 08:29:01 -0800 (PST)
Received: by mail-io0-f174.google.com with SMTP id q21so529196491iod.0
	for <yocto@yoctoproject.org>; Sun, 17 Jan 2016 08:29:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=JqSmIkzmQ0+2h3+f8o9gJpcj//roHnlXqCVbTo+B6U0=;
	b=gNd5pmX+znRLpgBBy1Nv4UH1iQYw+oA+qK3MSZ92G8gXko72bHrBg5KKPeTUFnxEE0
	yBiYSuBZcTR/LSEyd35kvmARthHcDz3VfY4iVAIlYi29oFrrV7VyxlNOoR0EkBdE444N
	pEaH8/eW/QwPHLXmHVz/2XdIIAxzzH5erpyAeOqU0FDKzTmkMr5BxkL5sQbcZ5oiQ93p
	rEpZMPa0h6T0TKj+2jfYBfBMGGROUYIJ444oGNrxrtoyjxsbR+dbL3vnKgtQc6wg2QaS
	BrIHNQSl/W3V3gMQCR5He9n5vBauS6j4XzfqsglGy+Bnyq4fHjWY9NvL3tKeN7hJrPK1
	Yi5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=JqSmIkzmQ0+2h3+f8o9gJpcj//roHnlXqCVbTo+B6U0=;
	b=RVR02vnihTzNfrCOBTBsRS4vNCd21g0bODFTh+HRpdAjnjM/usvSbMYzYmhL7exl32
	io+CNo3dhfmYdGgzSgYuFbahLqCeOvgpqdiaUCKK3b9XIulYpCcNyNKXNC1y0nQzCW3x
	lauzjKNYl/AjdzKj3eppFO3MrSDq0csiTF1vHwsq0z5/BXocuf6u1lkS0SwQPkHs2uIT
	zTDk2222Pd/1sSdZCZly6dLNEt4J+0Z7CFbGuuMRLz2euFq2p2z+X6ujXxe+3ZpKoVl9
	uPoU/5LmPGbbuqI5ee+jvlqDH8Uhg/QgXItD1hiD+obSkNANSjeb0aGioY6LAID08h9i
	FRwA==
X-Gm-Message-State: ALoCoQlm5SDx6ziJ5VQcpYhqCK2iXk1mW2RrgmubzP1Ua5MmzMooVclLkAPLqeGCdGpsg+oxgz9ru3w3gazw/btcN6IasedxAQ==
X-Received: by 10.107.9.224 with SMTP id 93mr17569693ioj.112.1453048141220;
	Sun, 17 Jan 2016 08:29:01 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.16.74 with HTTP; Sun, 17 Jan 2016 08:28:31 -0800 (PST)
In-Reply-To: <emb499deb3-312c-40c9-b7b3-cde584411127@marius-pc>
References: <emb499deb3-312c-40c9-b7b3-cde584411127@marius-pc>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 17 Jan 2016 08:28:31 -0800
Message-ID: <CAMKF1sodGwRdg0b_3SL=t_e_2jU3g_9tZsFaPG+cKz-iN2aEvA@mail.gmail.com>
To: Marius <mdlcameras@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to set aliases before bitbake compile
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
X-List-Received-Date: Sun, 17 Jan 2016 16:29:04 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, Jan 17, 2016 at 4:03 AM, Marius <mdlcameras@gmail.com> wrote:
> Hi
> I am still learning about yocto and kernels and the whole process so please
> excuse a silly question.
> Because I am still learning, I am re-compiling my BBB image on a regular
> basis as I only want the bare minimum of packages in the image.
>
> Now I have to edit the /etc/profile after every eMMC install in order to set
> my aliases. Where can I set the aliases before running bitbake on my image?
>

you can tweak this file using a bbappend e.g.

recipes-core/base-files/base-files_%.bbappend with content e.g.

do_install_append () {
        if [ "${@bb.utils.contains('DISTRO_FEATURES', 'systemd',
'systemd', '', d)}" = "systemd" ]; then
                echo "export SYSTEMD_PAGER=/bin/cat" >>
${D}${sysconfdir}/profile
        fi
}

will set cat to be default pager for systemd tools.
you can do anything in that do_install snippet.
>
> Regards
> Marius
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

