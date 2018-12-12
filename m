Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C94B9E00BB5; Wed, 12 Dec 2018 01:36:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.222.176 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com
	[209.85.222.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44BC3E0097C
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2018 01:36:19 -0800 (PST)
Received: by mail-qk1-f176.google.com with SMTP id q70so10338261qkh.6
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2018 01:36:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=7T11MDUHUrmSxeCl8ZKCe6fSfsxjINXDtMa03+JQ8Ls=;
	b=nYVns9rxPq8KxQX6gFLY9RH26s/ygyUNBKIiWWmm9QDwaacjL4zBDh5ZoUcMsiel8l
	adg7i0RFHZb8UDfl0B+T42HAqDQu60jBoKdvajC8El7oiUn7oQERFc/GM6B1Bu3TxEMZ
	8pSAGxMmRzRSztm5x5L9fdfddfyhWuI1mKQjLG8Mv2iAQvzih292qM3mkJHLjvL0sWYr
	RUkJr0tXV0BGxZwHt7ORSM0OFeX05M2p/ZbEpX5VFRzOArQS+GGHtw+/LU1kKOliPGUq
	6P3gumvAjdi+PAQlOc2A9tlh/ntZgfcFen62ms4ZhLkHfFDNeqmwpP6eg8G8fnBwnEEb
	BP9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=7T11MDUHUrmSxeCl8ZKCe6fSfsxjINXDtMa03+JQ8Ls=;
	b=c5HoTSuu1jSAFgxKdEI/WOgauMzQSxamIBziC+AbyGW72wA3wuHIJAk/McTUQpIWjB
	D5it3vyQg0AmrjKHG1h7TEEmwttW3iO7phU7TqMb4YPhykvd+WBdZpbstIgkcBzAg0Xk
	4cphTRSv0M1+aPH3M072pa5HQ4QUFYwLCjM4QLpM57Iasr4EyX4kfm4+1h51vLE1xWHB
	ZpHyTQ5kcA6gp2sBdbaMgmw6OFDXxvwZOKcTDh+nE+ufkyCrQ98kafFa71nYAIjHTTwP
	oYtM4u8sPEYXzt3y6rZxWRQeP6kni6Wfj5V74aSk4HKVC98lnHEjmRrQJWI7aEaKMFiL
	Itig==
X-Gm-Message-State: AA+aEWbR44hdondWCkwn31bBILZ/UrWZfTipnH51Ae73mzmUQQVm083+
	sGZjRc9hAQhGPuG1T4Q/wkq9SS+V4kYSypgFG4c=
X-Google-Smtp-Source: AFSGD/UA++VdEKaW4kZUz9R9HR22YtomFXL+6bEpQ6wNYioesoO9JuyuWmgvAlJTMz7ChnAr/HBGeXHNhkNfDhz30/s=
X-Received: by 2002:a37:6f45:: with SMTP id k66mr17973134qkc.313.1544607378481;
	Wed, 12 Dec 2018 01:36:18 -0800 (PST)
MIME-Version: 1.0
References: <CAGAf8LzfRHc6m-ixKdU8s0icQ-XFiGvfgr-+Kw9UAEqrsdCK3A@mail.gmail.com>
	<86583590-a56f-5fa7-18d3-86f0555cdadb@denx.de>
	<CAGAf8LyBmxi4fGQer_80GH2EfcvG_zmsztpWKgP8Dxf+1wKLPw@mail.gmail.com>
	<CAJTo0LayJuXgtpzOCTnPPh5-sQQABBFU9V-eFU9mbNui1GP_dQ@mail.gmail.com>
	<CAGAf8LzXyVS1N3C3b7aG73Tn-Cs-ga71f9M_Y6A4hucnxekKtQ@mail.gmail.com>
	<CAJTo0LYpWRRHAW2V+btYmWMu5sT-Q21aL4NoK0PE91vLYusmQg@mail.gmail.com>
	<CAGAf8Lys-HNqArNa7cqJ-swg8YQbdRmaXpK58RMaoM64bukRsw@mail.gmail.com>
	<CAJTo0LZK6tmjpk9AjdKCMFBm-T_JH_ryOKvRUvfgpN-oc7J1tg@mail.gmail.com>
In-Reply-To: <CAJTo0LZK6tmjpk9AjdKCMFBm-T_JH_ryOKvRUvfgpN-oc7J1tg@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Wed, 12 Dec 2018 10:36:05 +0100
Message-ID: <CAGAf8Lxc=P6wwGunKxQvXAzZbcFwfBJTKXN+KJmDeY8b+Q7yDA@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Jan Kiszka <jan.kiszka@siemens.com>, Yocto Project <yocto@yoctoproject.org>
Subject: Re: Git tool/command problems with YOCTO Open Source repos
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
X-List-Received-Date: Wed, 12 Dec 2018 09:36:19 -0000
X-Groupsio-MsgNum: 43503
Content-Type: multipart/mixed; boundary="0000000000001cca35057ccfeeff"

--0000000000001cca35057ccfeeff
Content-Type: text/plain; charset="UTF-8"

Hello to all,

After some time I sorted out some of the confusion about git tool. The
tags I requested to be added to the repos, this could be done by using
git clone, combined with git branch -a command and customized script
(adding git tags), which could be added to additional configuration of
the local repo to add customized tags.

As for KAS tool, the latest kas-bbb-thud.yml file is added for whoever
uses KAS tool, for the quick building of the whole BBB repos with thud
repos' commits. File is verified, it clones repos, and then bitbakes
all of them (for two basic builds, core-image-minimal and
core-image-base).

This is ONLY applicable for Beagle Bone Black platform, one widely
used as Open Source referent platform.

Thank you all,
Zoran Stojsavljevic
_______
On Wed, Nov 28, 2018 at 1:51 PM Burton, Ross <ross.burton@intel.com> wrote:
>
> On Wed, 28 Nov 2018 at 12:42, Zoran Stojsavljevic
> <zoran.stojsavljevic@gmail.com> wrote:
> > > What can you not do with Yocto's git repositories?
> >
> > Please, refer to my initial email. Not referring to Poky, I guess, the
> > Poky repo is equivalent to kernel.org. In other words, everything with
> > it can be done with git tool.
> >
> > I am referring to many others, associated with github. Maybe it is
> > ONLY github, which does not support git tool in full extend.
> >
> > So, as I said/wrote in the initial email. The concrete meta-bbb does
> > not support git tag, git describe.
> >
> > Once I have no tags, I could not do anything with git log. And... You
> > can imagine.
>
> Why does the lack of tags mean you can't do anything with git log?
>
> Tags are simply a way of naming arbitrary commits, typically "This is
> version 1.0".  If a repository doesn't make releases then it doesn't
> need to use tags.  This isn't a problem.
>
> Ross

--0000000000001cca35057ccfeeff
Content-Type: application/x-yaml; name="kas-bbb-thud.yml"
Content-Disposition: attachment; filename="kas-bbb-thud.yml"
Content-Transfer-Encoding: base64
Content-ID: <f_jpkz9gd40>
X-Attachment-Id: f_jpkz9gd40

LS0tCmhlYWRlcjoKICB2ZXJzaW9uOiA0CgptYWNoaW5lOiAiYmVhZ2xlYm9uZSIKCnJlcG9zOgog
IG1ldGEtYmJiOgogICAgdXJsOiAiaHR0cHM6Ly9naXRodWIuY29tL2p1bXBub3cvbWV0YS1iYmIu
Z2l0IgogICAgcmVmc3BlYzogMTE2YjVmZDdlODZjODQxMzE0OThjM2I4YTUyMGU4YTc1YjA3NjEw
YwogIHBva3k6CiAgICB1cmw6ICJodHRwczovL2dpdC55b2N0b3Byb2plY3Qub3JnL2dpdC9wb2t5
IgogICAgcmVmc3BlYzogNmI1MDQwMTlkNmYzYTE5NjEwNTk0ZTY1ODEwYWMyNDVkOGZjYjRiZQog
ICAgbGF5ZXJzOgogICAgICBtZXRhOgogICAgICBtZXRhLXBva3k6CiAgbWV0YS1vcGVuZW1iZWRk
ZWQ6CiAgICB1cmw6ICJodHRwczovL2dpdGh1Yi5jb20vb3BlbmVtYmVkZGVkL21ldGEtb3BlbmVt
YmVkZGVkLmdpdCIKICAgIHJlZnNwZWM6IGExNWQ3ZjZlYmNiMGVkNzZjODNjMjhmODU0ZDU1ZTNm
OWQ1YjM2NzcKICAgIGxheWVyczoKICAgICAgbWV0YS1vZToKICAgICAgbWV0YS1weXRob246CiAg
ICAgIG1ldGEtbmV0d29ya2luZzoKICBtZXRhLXF0OgogICAgdXJsOiBodHRwOi8vY29kZS5xdC5p
by95b2N0by9tZXRhLXF0NS5naXQKICAgIHJlZnNwZWM6IDAxMGEyOWUwYWI1ZWIyYTdlZmRlOThl
ZTBhNGY3ODg4NDI4MWJjMDkKCmJibGF5ZXJzX2NvbmZfaGVhZGVyOgogIGJiYi1jaXA6IHwKICAg
IFBPS1lfQkJMQVlFUlNfQ09ORl9WRVJTSU9OID0gIjIiCiAgICBCQlBBVEggPSAiJHtUT1BESVJ9
IgogICAgQkJGSUxFUyA/PSAiIgpsb2NhbF9jb25mX2hlYWRlcjoKICBiYmItY2lwOiB8CiAgICBD
T05GX1ZFUlNJT04gPSAiMSIKICAgIFBBVENIUkVTT0xWRSA9ICJub29wIgogICAgU1NUQVRFX0RJ
UiA/PSAiJHtUT1BESVJ9L3NzdGF0ZS1jYWNoZSIKICAgIERMX0RJUiA/PSAiJHtUT1BESVJ9L2Rv
d25sb2FkcyIKICAgIFRNUERJUiA/PSAiJHtUT1BESVJ9L3RtcCIKICAgIFBBQ0tBR0VfQ0xBU1NF
UyA/PSAicGFja2FnZV9ycG0gcGFja2FnZV9kZWIiCiAgICAjIG1hc2sgZm9yIG5vbi1tZW5kZXIg
YnVpbGRzCiAgICBCQk1BU0sgPSAibWV0YS1iYmIvcmVjaXBlcy1tZW5kZXIiCiAgICBCQk1BU0sg
Kz0gIm1ldGEtb3BlbmVtYmVkZGVkL21ldGEtb2UvcmVjaXBlcy1leHRlbmRlZC9zb2NrZXRjYW4v
Y2FudXRpbHMiCiAgICBFWFRSQV9JTUFHRV9GRUFUVVJFUyA9ICJkZWJ1Zy10d2Vha3MiCiAgICBD
T1JFX0lNQUdFX0VYVFJBX0lOU1RBTExfYXBwZW5kID0gIm9wZW5zc2ggY21ha2UgbGlic29ja2V0
Y2FuIG5mcy11dGlscyBydC10ZXN0cyBzdHJhY2UgcHJvY3BzIHBhY2thZ2Vncm91cC1jb3JlLWJ1
aWxkZXNzZW50aWFsICIKICAgIERJU1RST19GRUFUVVJFU19hcHBlbmQgPSAiIG5mcyIKICAgIElN
QUdFX0ZTVFlQRVNfYXBwZW5kID0gIiBjcGlvLnh6Igo=

--0000000000001cca35057ccfeeff--
