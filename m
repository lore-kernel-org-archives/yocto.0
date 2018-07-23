Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CC4FFE00C77; Mon, 23 Jul 2018 11:42:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f173.google.com (mail-ua0-f173.google.com
	[209.85.217.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08F8FE00A04
	for <yocto@yoctoproject.org>; Mon, 23 Jul 2018 11:42:45 -0700 (PDT)
Received: by mail-ua0-f173.google.com with SMTP id t14-v6so1085632uao.8
	for <yocto@yoctoproject.org>; Mon, 23 Jul 2018 11:42:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=r87B35Mlo2/jTRrtlkM55quNNMk+B/xNwZORe3g+Ow8=;
	b=lRU2YszKczlhy1sAOcyAlhWLGFUESE7df0gezFS2ngvtQBB/F4zlcZ76FJhIw+S0em
	O9KE4X2LTMEF1dfjT660s9A6zVN49icWBJ0Fwd1vfaJPo1bYvn+6OpeBNP9/HKnSBxJH
	sYu6nMU4a4K8dgKxazw9vNH6X7voMRy6FQ/BhJOJOL0cKWkQuxXT5BdhH8eCGVEa4NvP
	0AFZ6iRWvL6+VJoPgZFCU5sQTQ57jnCjbZeCRMuIXLgsKaCcL3JNE2SA7evNCnHHOq2K
	iTZyCWYkb0i/EUTMO7PHRZ5RAqB01PhvZcDWN1kcIxW/RwCx6/vnrVw6Odk37vV6I9+P
	Bdow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=r87B35Mlo2/jTRrtlkM55quNNMk+B/xNwZORe3g+Ow8=;
	b=CATp0juW9ZpQEwN6808hCUNN+9kTlD4s9J09j+Ip4PgF1mtLUk+iWpHrQ5juRxzjCL
	w1/+VVJk8ckwa6rU0vhoUYFIFYGXn04KWrfoBblcsMdx6kRF6uRHjqI+MVu+vNw9PiqW
	/1Jv4n1YBhd/TyUjPXb6zQdNc5LLr0HQFkAGylI7XDGED20OT4iNn6oPvBKHQGi8b+9J
	dF7BzHZX+lS6gd43SrYeCUGT6NZ5HRxqhn8QH8a3ULFSpJOx3Pfvq9VistsP0+Dlb/vM
	ehtmS5W6OSq78J4tIb8O7eRYC+1Tq+5e3YfuirLVS5pQrWRVd+I005m113uYXN6DzbVl
	rvdw==
X-Gm-Message-State: AOUpUlHe2RHuUip4YC82DwQBObBYBeGBtJK/0sWYzhmtPmSfFZk5ogDN
	z6/7xc2MJ2xqOwOjEpQaEC92KMAF+MIClixN4dE=
X-Google-Smtp-Source: AAOMgpcGMQj+F85TP60L4ed5ijpFXaVAb/UUqQ5KZZsgGsa2hLjJsah5+L+OrpEIZ3xk1zjAsX8aR81IN//3Fr4WNiA=
X-Received: by 2002:ab0:1544:: with SMTP id p4-v6mr9554078uae.81.1532371364964;
	Mon, 23 Jul 2018 11:42:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab0:2a5:0:0:0:0:0 with HTTP;
	Mon, 23 Jul 2018 11:42:44 -0700 (PDT)
In-Reply-To: <2d030ea4-b2df-58fe-9947-e1c4e40ea17b@gmail.com>
References: <051ffcba-0255-4d93-e8f8-01993e967ef2@gmail.com>
	<2d030ea4-b2df-58fe-9947-e1c4e40ea17b@gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Mon, 23 Jul 2018 11:42:44 -0700
Message-ID: <CAJ86T=WtLMKA3M5-fWR1pm-x8PRRGwFihuwpuhbzEtQaGwFRTA@mail.gmail.com>
To: MOHAMMAD RASIM <mohammad.rasim96@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: bitbake is corrupting my files during unpacking
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
X-List-Received-Date: Mon, 23 Jul 2018 18:42:46 -0000
Content-Type: text/plain; charset="UTF-8"

On Sat, Jul 21, 2018 at 12:55 AM, MOHAMMAD RASIM
<mohammad.rasim96@gmail.com> wrote:
> well apparently this is caused by the unzip binary that is compiled by the
> openembedded unzip recipe.
> If I unzip the same zip file with the unzip binary that is shipped with my
> system(manjaro) then the files are not corrupted but when I use the unzip
> binary compiled by the openembedded recipe I get error and file corruptions.
> These are some of the errors I get when unzipping with the openembedded
> unzip:
> ...
> symlink error: File name too long
>
> This error happens to multiple files where the file is symlinked to the
> content of the file and not to a path !
> Where should I report this bug ? openembedded ? unzip upstream ?

If you google the "symlink error" you should find multiple hits, which
all indicate a known bug in upstream unzip 6.0.

So, it should be reported upstream. However, given that the last unzip
release is now over 9 years old and there doesn't appear to be a
public upstream development branch, the chances of getting a timely
response don't look too good.

We should probably add the fix to the unzip recipe in oe-core:

  https://bugzilla.redhat.com/show_bug.cgi?id=972427

