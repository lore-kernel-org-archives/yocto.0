Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA703E00BE9; Fri, 28 Jun 2019 12:53:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.44 listed in list.dnswl.org]
Received: from mail-io1-f44.google.com (mail-io1-f44.google.com
	[209.85.166.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0EC00E00A49
	for <yocto@yoctoproject.org>; Fri, 28 Jun 2019 12:53:47 -0700 (PDT)
Received: by mail-io1-f44.google.com with SMTP id j6so15012456ioa.5
	for <yocto@yoctoproject.org>; Fri, 28 Jun 2019 12:53:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=UjZ5yNIsfZrS0zALt/NkYysuG27n++aFrEy+VoHOZXc=;
	b=FGX/srW/Mc8wqdiKy8xcaw8bJm1XdUzH/enYnzHhhZnXygMED54iME3u4H0BV0fRt5
	EwKgGYclegTBrmE7rw0VZnVtTPrrVgi+NHsSbuLepoNE0JMlmuXtt1SMvjrrwKVm07IN
	Jln2leMEu6NaCrUJM50jhi4VUps8YKwDIeWi77u3ySW6jQv15VyI0QOFTmDLs/LnM3wK
	5iCIVo+cNxaFEaKMHp/QH2aNQswzxS27lM6bmarBNflD0dGBX7K1gNzbmSMl8cePA4cQ
	I4+7VS2ycN8OLCGIDQKtqF5dMPDp75Cdh90Y30On9Y8/gtJy5O1SwPB/rMrkDU6mCB6Q
	8e6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=UjZ5yNIsfZrS0zALt/NkYysuG27n++aFrEy+VoHOZXc=;
	b=dic/vAwBitayLgPltS+V0SC1a4KU+LtDB1/qgzTzT44/TXEWBv6YZiMj4CtQV3aWRT
	3ZU8cxbHBu98vQsloXDPVeO+NkRMK2VM8HSNSVhiIDqkr9oqSsylTMaIxQWDT2/hJ0Zb
	huV6DnA72RPPaJSDUDK1LkCA5ssVFy2iTHJzpn+Xt20Jn87AJy63nOYI5OTVJtOo5nBn
	bpE2ZSQhnp1vOAytpKuJ+XR+hy8YoodtZdIu3AB5zK8RiO84pO70WksTptPCZlgZM3sj
	3RZkh3XfpKLCtYqnp/cjvKWTxACEMz4mYa6zS9QYVxIWIRm94bDLit8nfqbxALUfB4RY
	iTqw==
X-Gm-Message-State: APjAAAVJgyZk32Qh+95H8znJNAQo9nx3vVbLKRiGeMJrb6nBwqHyOXVp
	rm8+UUsm89KRP9C7QrnTAqgF50WKmMc6u2Gk/g0ASaM8
X-Google-Smtp-Source: APXvYqzVVmnK52k7V7cQKOtzjYKkwb6t/dI6oityst9hm9nESWeAgT3OPA0NQtmuTwxby3RkOujz6ZAK3zu3DYoWl7w=
X-Received: by 2002:a02:914c:: with SMTP id b12mr13860179jag.105.1561751627314;
	Fri, 28 Jun 2019 12:53:47 -0700 (PDT)
MIME-Version: 1.0
References: <CAMd7AX9bg5u+Wm=bWbbW7_0A06Ko6njP9OuE96+-W1PxJjugUQ@mail.gmail.com>
In-Reply-To: <CAMd7AX9bg5u+Wm=bWbbW7_0A06Ko6njP9OuE96+-W1PxJjugUQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 28 Jun 2019 20:53:34 +0100
Message-ID: <CAJTo0LaYOfqUoqwV257E60ZSZPzHBZ9pCUM6q0fckE8MLVnSeQ@mail.gmail.com>
To: Aaron Biver <aaron.biver@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Creating a file within a recipe
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
X-List-Received-Date: Fri, 28 Jun 2019 19:53:48 -0000
Content-Type: text/plain; charset="UTF-8"

The bash parser does have some bugs, and I think you just found one.
Probably easier to have a template on disk in SRC_URI, and sed in the
value you want.

Ross

On Fri, 28 Jun 2019 at 19:35, Aaron Biver <aaron.biver@gmail.com> wrote:
>
> I'd like to be able to create a file using the cat command in a recipe.  The sub-goal is to have the file created somewhere I can actually find it:
>
> do_create_tebf0808() {
> cat > tebf0808.bif <<EOF
> all:
> {
>     ${LATEST_TEBF0808_FW}
> }
> EOF
> }
>
> This fails at the "EOF" line:
> ERROR: ParseError at ...firmware.bb:43: unparsed line: 'EOF'                                        | ETA:  --:--:--
>
> Maybe sed would work better?
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

