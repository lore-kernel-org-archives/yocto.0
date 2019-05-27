Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51985E00D35; Mon, 27 May 2019 07:49:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (marek.belisko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.65 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
	[209.85.128.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F50EE00D30
	for <yocto@yoctoproject.org>; Mon, 27 May 2019 07:49:54 -0700 (PDT)
Received: by mail-wm1-f65.google.com with SMTP id d17so3211908wmb.3
	for <yocto@yoctoproject.org>; Mon, 27 May 2019 07:49:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to:cc;
	bh=OD2encPwFwwJckB4fyCLK/by6lQDSspU3gsIBYqwgCU=;
	b=msDyRQBct/bzumcV7YHgNULsj6cR/GNoczT332UF2KsfYEc2LROLMyvyH7nd9oN4jn
	/mv9dTJPsygVkw/NVJl/lhLgj3XooFW1x2tuOJWAWu/V/ql/lks90HpL/y5wzVmAIbyc
	Lzt0QmyoevGAAqGxDwtgAaH1YlqmshNSLqMr3vEYZM8tmSqROFbz6sdTxgzyx6J7+Exe
	9Nlq6//OjS8unGVWdvsDVwNMjEzN7/1pnmYgXIzPNqoiwaho4zCKUvi/l9FdW0xIRMOb
	A8DmWz0MBzbmY77WKqXoC+IpKEHkcyMmOGtSOIrUqmALcKMUrA3IyIKrSMMO+eGGhcox
	hvXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
	bh=OD2encPwFwwJckB4fyCLK/by6lQDSspU3gsIBYqwgCU=;
	b=Eh9RvfYiJrRyeRpB7/zGJhSoJL33LBYL4t2Ee/8hZy3R3qIyr/uEDOmiJuhzH0R2ui
	l6J5SHYKmIsxbzX3IjzxZh3kISm+ai3+4ItIRi5DAnnHurfgTr2thWwR2hDSH+10N8A2
	nx0YJEKGZSYKmhTX7NGd3cLYWxObAk6QAfM8p4MQEIJp7ZQMz60TCAOIW/KVKoecv25k
	93lljH5WNsFPppMz9ev42ZfQemiYoOhwxlb27W1p0bhPZ3QU4dhMW/qKfoZYcX0jPuo3
	w9UDlTyebs0D+RYb3Qno3QWg9k7GvhqrfNhFFY7DlwpTS+G8IbytkekUL9Lu0HAQlh83
	7omA==
X-Gm-Message-State: APjAAAXp2BWKPWI6YcjlgTnEOU1BY1l1JF5o34AO6GJWy/9J6apAvs/O
	VsrV0Qyv4QMx9BykhoDko01MAfMaTutqqHsR//8h7CZ2
X-Google-Smtp-Source: APXvYqxv9QpYHs7w9ocL7KgxQ/mxnQhDrVaxifBkW4nt3894xsZvvu9CvuwlGiytHhUqyh0iqVxJ92bIEItuXMXmCro=
X-Received: by 2002:a1c:2082:: with SMTP id g124mr1943031wmg.71.1558968593171; 
	Mon, 27 May 2019 07:49:53 -0700 (PDT)
MIME-Version: 1.0
From: Belisko Marek <marek.belisko@gmail.com>
Date: Mon, 27 May 2019 16:49:41 +0200
Message-ID: <CAAfyv34HAOaAaO1cyiQbR8P6mQPp8p3gCT2jM=UyQDGfvV-fYw@mail.gmail.com>
To: yocto <yocto@yoctoproject.org>, OpenEmbedded Development mailing list
	<openembedded-devel@lists.openembedded.org>
Cc: Enrico <ebutera@users.sourceforge.net>, slapin@ossfans.org,
	aguirre.nicolas@gmail.com
Subject: meta-sunxi maintained?
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
X-List-Received-Date: Mon, 27 May 2019 14:49:55 -0000
Content-Type: text/plain; charset="UTF-8"

Hello,

I'm just curious if meta-sunxi is still maintained? I was contributed
to layer back while and when look now thud branch is un-compilable
(dri2proto not replaced) and warrior branch not created yet. There is
14 issues + 6 pending pull requests. Added maintainers also in CC. I
think it would be good to have sunxi properly maintained as boards
with sunxi processors are popular. I can give a hand as co-maintainer
if necessary. Thanks a lot.

BR,

marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

