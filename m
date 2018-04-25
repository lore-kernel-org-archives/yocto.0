Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D3408E00B57; Wed, 25 Apr 2018 05:19:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.175 listed in list.dnswl.org]
Received: from mail-io0-f175.google.com (mail-io0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4406E00B01
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 05:19:44 -0700 (PDT)
Received: by mail-io0-f175.google.com with SMTP id p124-v6so1326638iod.1
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 05:19:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=NwGXleTU0uiseAbDUocJEwxqLAKDH7uCryXSp3RNPEU=;
	b=KR/ep6gLrbqOeUPDLBUB05xIECFQD3QwLYjfSwXin+Zkj+CIxxd+eNHsHxyxVvoDLa
	31FUj9zeqy2iSgRKDDu1ELPkImDej51E1Ojbhg9SyzIn9bSuwEhZUvkpc7h83Tafe4Tc
	IkgKqYM8RRtRZy9lNEQkqo0nLArfpBb6k43jQSmVnyRm8zY9Fg+xPdTyv3GN6F9tOLVp
	yT6hgRGQ6vTcKWcgXNqqJr9hy3Eh+xHL6Y1skl+MkLPMW9byaLY/zoIUN/FTLsjV7SMx
	BZC5ryUTDAp+zjzuOwI3UEZhqAiQSGaj5FExP/BLpB+LAC8doQr9BOCq11HwdqmWM+uP
	2jMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=NwGXleTU0uiseAbDUocJEwxqLAKDH7uCryXSp3RNPEU=;
	b=Uq6DiPX8ahQ6t89uYU5zXukrYcX+ZBb1x27tmZ6fJ+N033nqYVqEG2nK1TqUnpu5uT
	3BnGRMm9el+OYXHKiOvlKbKmYstohXcLhsfGUhd3uyh/fq7kkm/3HXs/sMGOGhKtFey/
	8W9H33q2sTEJ45vLuWrkFGFQsUSMjn3uxTLmqFku+rhKTmor5SHxjO8iDoQq61vKYnAl
	+SEfQvpx0qfsqCnD34KxcOKAl5fR04Hni6m1rktypOXQnVnFdxLvrSOh0MtrWeDKvRJf
	v0z7wpcQRrXPLLsHowGQ/ddM+iKvImHsVyippIRAV76lBDrFtx9oJ+vi2nAq6TRj7/P4
	QpaQ==
X-Gm-Message-State: ALQs6tAox1W6xMlHkAXQWewgwItGJeN9pKAtE/G3NtQ45wI4+A44lEq7
	z3cxDo2ZF6j8dwjTmo+oo6rrR5nlgRVrNzXnGaW3mA==
X-Google-Smtp-Source: AB8JxZqGryYGwfZKf5jM/dzreFbIBSukuH7uqfumLm/HKGCtuG6q5Zt0u361rKN17cYPmRFKHsfoBRUVaq8Mrju4S/o=
X-Received: by 2002:a6b:6b16:: with SMTP id
	g22-v6mr27727580ioc.20.1524658784107; 
	Wed, 25 Apr 2018 05:19:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.29.203 with HTTP; Wed, 25 Apr 2018 05:19:23 -0700 (PDT)
In-Reply-To: <509dbc86-dd0b-0d58-9d26-286cd8a2d026@windriver.com>
References: <CALw8SCWhMWJuQGDDbaG3fA617Qew9GvAapc+JvVU6d+9DoOafw@mail.gmail.com>
	<c9e549ba-42f6-1a79-ec63-c37ceb805364@windriver.com>
	<CAJTo0LYtg87SdW_SPuxTo+ifMxZN+qKJmnA4+PqC2R5fBgZ+kA@mail.gmail.com>
	<509dbc86-dd0b-0d58-9d26-286cd8a2d026@windriver.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 25 Apr 2018 13:19:23 +0100
Message-ID: <CAJTo0LaUz05OGBXA47zMBHiNKcN3b0iHcArAB8V-=84-kF6Yug@mail.gmail.com>
To: ChenQi <Qi.Chen@windriver.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: gcc not found
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
X-List-Received-Date: Wed, 25 Apr 2018 12:19:45 -0000
Content-Type: text/plain; charset="UTF-8"

On 25 April 2018 at 09:59, ChenQi <Qi.Chen@windriver.com> wrote:
> After checking it again, I think removing the '/' would be sufficient.
>
> do_unpack[cleandirs] = "${@d.getVar('S') if d.getVar('S') !=
> d.getVar('WORKDIR') else os.path.join('${S}', 'patches')}"

To protect against this I'm running a test build with this change:

do_unpack[cleandirs] = "${@os.path.join('${S}', 'patches') if
os.path.samefile(d.getVar('S'), d.getVar('WORKDIR')) else
d.getVar('S')}"

Ross

