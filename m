Return-Path: <ulfalizer@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 58131E00756; Wed, 27 Apr 2016 09:11:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ulfalizer[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f171.google.com (mail-yw0-f171.google.com
	[209.85.161.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0671EE006D3
	for <yocto@yoctoproject.org>; Wed, 27 Apr 2016 09:11:52 -0700 (PDT)
Received: by mail-yw0-f171.google.com with SMTP id o66so92180501ywc.3
	for <yocto@yoctoproject.org>; Wed, 27 Apr 2016 09:11:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to;
	bh=RhA+m2jSESNZQowa7Ig+12RCcaspgMLg9PpdtEm/XsM=;
	b=fjr5TgcNviuO1720VX4qqogouAPTzT1vbxP3bPTA2mDECNfwnP55UA7ZSYufr5x4b8
	4OkfjA2hg+jdAfrai8BqkaM2dlMhRXrAdYNA+zGRIWOzSqIrGofYI8q3N9g6cMFeWX1h
	NmCQWwTDzheeR7RaHqP5Y5NTZY8Lb4IKV5f+1mWEgiFosHMYQjRVcTMKd2bTTjvYXtLa
	qeRaoe4/7QkgNyXP7AlGir3jNnkaa4jwgj1IrPOwyvXGrJeL3FOz4qzyfijgamqR+cif
	89Y2ghQs8T+0EPEpUZmI3A7kJytVj2Hgo90DmId1EzPECY2yiaXFNwJ9n2WY0YeEhxGo
	tLOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
	bh=RhA+m2jSESNZQowa7Ig+12RCcaspgMLg9PpdtEm/XsM=;
	b=ibQ1y0WQUdYHhOEVL40TY++esHQEAvji0hA3u4SlwitqRAmFl5TX1PtPGO3lqfqYJC
	PPKSJ7lFLKXsO/iD4wdJ0sgXaG4gC+KBYoA9gHXW68+HWol51nQfmwoyxV5nn4UTX7uW
	lbCz2mK8nPko+JYZxi4Ni+mXr0CWRvp6t68Fscf+welU//Q6TDjh9os1+HhIVNM/GuUW
	St9ywibeFw8ngbSaZENgJa76pv2isBjcY9nE18eqyDwyh0Xd/N7oCDRH1nkEVdZHYuB5
	JaGwCc7uSkCrIhaz3pSw2vlvUomQpSgYdFxrSgGcKZW1LVvnv7fm2iGOUFyyUfe/rAN5
	EVmw==
X-Gm-Message-State: AOPr4FU8zoe/vQQnKNSFcPHOwgzmUT5fqyhQAv363YjjMrCN5IdQTISjm+WXl1PpPuxyLNqtOCXhzAEa7WFoVQ==
MIME-Version: 1.0
X-Received: by 10.176.64.161 with SMTP id i30mr4757129uad.150.1461773511907;
	Wed, 27 Apr 2016 09:11:51 -0700 (PDT)
Received: by 10.103.124.204 with HTTP; Wed, 27 Apr 2016 09:11:51 -0700 (PDT)
Date: Wed, 27 Apr 2016 18:11:51 +0200
Message-ID: <CAFkk2KSM3yNdy1jayEkNXNrZMyWu3TNQ86=Eg33C2Dm8X70h2A@mail.gmail.com>
From: Ulf Magnusson <ulfalizer@gmail.com>
To: yocto@yoctoproject.org
Subject: Dumping (inferred) do_task[vardeps] for some do_task
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
X-List-Received-Date: Wed, 27 Apr 2016 16:11:55 -0000
Content-Type: text/plain; charset=UTF-8

Hello,

I'm trying to get a feel for how BitBake infers task dependencies. The
easiest way (but I'm open to suggestions) seems to be to dump the
value of do_task[vardeps] for a particular recipe after the inferred
dependencies are added.

What's a good way to dump do_task[vardeps]? I tried using getVarFlag()
in an anonymous Python function, but it only catches dependencies
explicitly added to do_task[vardeps]. Maybe [vardeps] is never
assigned the complete set of dependencies internally, or maybe the
anonymous Python function is called too early.

generate_dependencies() in bitbake/lib/bb/data.py also looked
promising, but maybe there's a better places further up the callstack.

Thanks a lot,
Ulf

