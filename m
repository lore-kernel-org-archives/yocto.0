Return-Path: <gruntblue@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BE0D7E00CBC; Mon, 15 Apr 2019 09:02:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gruntblue[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.217.53 listed in list.dnswl.org]
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com
	[209.85.217.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 578DDE00D3F
	for <yocto@yoctoproject.org>; Mon, 15 Apr 2019 09:02:37 -0700 (PDT)
Received: by mail-vs1-f53.google.com with SMTP id o10so9748279vsp.12
	for <yocto@yoctoproject.org>; Mon, 15 Apr 2019 09:02:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=8gvkJO9xVQrfWrfjWP/FCdTmCdKZ6obU9cH2iK7dvpc=;
	b=O5EwssTEJlVgyCvWmMnEIbA6XK7tg+KnHw+TrDlrsQEYZbdHHD+s1F6qLBW9qD/JXr
	cfNCAGipchhtA/MRSJRXT7HaBuyuHtk+QzaVcnecud9D1z7kpHTWHeZ5rpF6i0tTcD0N
	zvpoHl35srYCgm6T6ljx4rKLObfDigM07tHVrkpm3fr4SQGczxF0oN3YT6FJ0mEhJe/+
	6REA9rrgwgCTl2n+9EkB6pOFYSwxeuMsbXzc/V6vNokdMV2U2VHn0TM4aOBAmFllnAh0
	MIj9mD+u+6HY72eLJh9iXZ43jLh9ULX7GqfxVaGkSFQ61mvLGynAOD2kK/yq6OvDoZ9e
	5LZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=8gvkJO9xVQrfWrfjWP/FCdTmCdKZ6obU9cH2iK7dvpc=;
	b=PU0N3wRCBqHx7QnfQg1Ls5JRSbMLZkFnO9v0ERjBK2iZVl2fBs/vb8Tz0HMcwz3A3E
	4Zpi1+H9AMXn16HMctc2PpUGThPAqJ4dOZ+IhE9drqqYvpEYS41UAuckAXfQf1uSwTAs
	P7ap1f2oeNDXGXn9B4yS5/xQkopjQtsZqBIuv9Tpu5O6Oyrys1+QmGmduoWL9DjKjQMG
	cW6eG74G1Bxj1nNrJmQUnw4zq3e/yf844zgmVaV6EDY4wwI5tTqxqzWQ/WOdY04sgo7r
	/vtipuSnJ+9Rdp7pU2WaAG1Vi1HwVWwiWjTDsm+ylMIgYCd7uXRnwhwR+fw69PSXMFsX
	6Amw==
X-Gm-Message-State: APjAAAWWRYSNLsbS5EaAcHNG2mhe3R0x9KXP0YSr0yLu9DjqRaY2pSiA
	enP+zvS1LGNcFwuyJRV2h6jXWz1KE8LahmUS+fa7Nw==
X-Google-Smtp-Source: APXvYqypsRvi5xgqSdE2Lsrup4blmDsCx4vdl8DCV7Cdr813v2/SaiM8Qt9RE8AZnt3kZLlQzswSa+MBol2iYvrKxiE=
X-Received: by 2002:a67:b44c:: with SMTP id c12mr30654671vsm.169.1555344156416;
	Mon, 15 Apr 2019 09:02:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab0:7025:0:0:0:0:0 with HTTP; Mon, 15 Apr 2019 09:02:36
	-0700 (PDT)
In-Reply-To: <bcc6b9e58a9148d3fa8d3d64732e6cbeba5ca88a.camel@linuxfoundation.org>
References: <CADB9fJEbDEKKdu7CUoWC4AxC_=hk0vMFPajh0PWijUHy5WW1BA@mail.gmail.com>
	<cdeb499d193a545fd52d93a2ebe2b998e9421b20.camel@linuxfoundation.org>
	<CADB9fJHhPie5Efxs3g_+HyjBtwK7n6Nu_=Gx9CMCjc9_0pK4OQ@mail.gmail.com>
	<ddddfc4db6df73aa86ea934140c6795d1d912c0e.camel@linuxfoundation.org>
	<CADB9fJFY+MJsRPYgWzDxqH6LoxrDY9KVEbn92PrJ_KvXY=LPBg@mail.gmail.com>
	<bcc6b9e58a9148d3fa8d3d64732e6cbeba5ca88a.camel@linuxfoundation.org>
From: Eric Grunt <gruntblue@gmail.com>
Date: Mon, 15 Apr 2019 23:02:36 +0700
Message-ID: <CADB9fJF21h6c2yhAF0jtDHDf2ek1hyfk0mLuQ=zMrojQj4TjkA@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Dependencies on other file system types for custom file system type
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
X-List-Received-Date: Mon, 15 Apr 2019 16:02:39 -0000
Content-Type: text/plain; charset="UTF-8"

> I think there is some translation code somewhere which probably
> confuses things more as some bits have - and some have _. Does the
> squashfs_xz image type actually work?

There is no squashfs_xz image type.
squashfs-xz (by poky) works,
squashfs_xz_ubi (custom type) also works,
but needs to occasionally call IMAGE_CMD_squashfs-xz itself.

