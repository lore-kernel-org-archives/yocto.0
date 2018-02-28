Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6EBB0E00E65; Tue, 27 Feb 2018 19:24:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f178.google.com (mail-pf0-f178.google.com
	[209.85.192.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB8D5E00843
	for <yocto@yoctoproject.org>; Tue, 27 Feb 2018 19:24:41 -0800 (PST)
Received: by mail-pf0-f178.google.com with SMTP id f80so470057pfa.8
	for <yocto@yoctoproject.org>; Tue, 27 Feb 2018 19:24:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:organization:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=oQiL8fjkgAvoSJlegK7yzFvXJ/SN3ITDu01rn5U5TdE=;
	b=CKVIjmY4Nkqd6FVB6HoDvLePXWXmsgx+XUYC77AAGAqYvAWQST4FH9ftXPfiiAerwX
	1awiz9HyYYJAgQEZupFjtqiqxSObrF292i209i2E9cOv/MPdwFcVc0CtisdoUqRWLArC
	g9EnTKH41o3D6k85ABT4R9fgb2PYof41ELFTVf7xOD6CRFMZLroyLqUOt4fOWF+oJAAp
	6+1JrBlsSKophRgGhfvFMtOxXX6xrCT+tMgix0W8wM4sIcgeJ3mEKzl5WGmC+krmpGfe
	wL43H0dxfBjPRMWYxR96aFN9pXUBCNl1TdlPg5b9N2fYQRqqatyQCvQ6NHnPcMuStNgh
	ubHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language:content-transfer-encoding;
	bh=oQiL8fjkgAvoSJlegK7yzFvXJ/SN3ITDu01rn5U5TdE=;
	b=bZxZidtv0F7YASRtCJ9hmV3PIjKnqKMbzt3pwYdyNXoYN4sT/a6BxlFVm4s/SrqO4I
	Tg4GJtNWvhEe4dmXatebBnQmrLsYuoLTH+TUvKDrmlgsoAQwAtCcXDklJJdo37bZ2xZg
	QUbwKbvmgTgZgH1XMCrj6Y6qYgl3IbOYlKANvhEraVp/p6YKXsQR/u0u6NRwM39Sffvo
	01AoA/8QFm777C4PZGUCryFFXTGP7BmtcJQGBp5k/2Hwbyyybi4KLqGW2dKX6ikn2q2E
	Cvj4gRvo83Z0KMTxjY6Pq2WI9/TD5bZjTlwR3izQ3CBcGtSUks8CLUCkS3CEV5vLrz8v
	zYnw==
X-Gm-Message-State: APf1xPB4V2oychhs5o48x7xwmWs+tJ8O1viFwJahYQp4cGJSqPl5zJJ8
	ny4/r8oVc4fElmOn8lz6lUKuQxfC
X-Google-Smtp-Source: AH8x224/UIzLP6CZrvAWk95Krk1q6hnjxsbEK/clH8H0IPs6UU3UkWUkFI63dws2tmsOXo9v7kdgdg==
X-Received: by 10.99.159.10 with SMTP id g10mr12825285pge.407.1519788280618;
	Tue, 27 Feb 2018 19:24:40 -0800 (PST)
Received: from hermes.local ([2601:646:8880:466c:812d:b93c:3785:4a27])
	by smtp.gmail.com with ESMTPSA id
	c14sm714724pfn.185.2018.02.27.19.24.39 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 27 Feb 2018 19:24:40 -0800 (PST)
To: yocto@yoctoproject.org
References: <CAC+thW2jxwgiamTOXRaYDnwoy39m4GkYY7Jp+k9pK40z+cbJBA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <43535f17-2857-ee50-05e7-86529d8ecd07@gmail.com>
Date: Tue, 27 Feb 2018 19:24:38 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0)
	Gecko/20100101 Thunderbird/59.0
MIME-Version: 1.0
In-Reply-To: <CAC+thW2jxwgiamTOXRaYDnwoy39m4GkYY7Jp+k9pK40z+cbJBA@mail.gmail.com>
Subject: Re: crops/poky workflow and git
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
X-List-Received-Date: Wed, 28 Feb 2018 03:24:42 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 2/27/18 9:47 AM, Andrea Galbusera wrote:
> Hi!
> 
> Anyone here regularly doing yocto builds from crops/poky [1] containers?
> If I got it right, the idea behind using containers derived from
> crops/poky image for builds is to keep the entire development workflow
> outside the container and use the container for build related commands
> only (ideally setting up the env and running bitbake).
> 
> Then, a very annoying issue I face in trying to enforce this idea as
> my regular workflow is that interacting with git repositories created
> while the build runs is becoming almost impossible from outside the
> container, where regular git work is expected to be more conveniently
> done.
> 
> The point is that repos get created when bitbake fetches sources from
> within the container and git itself hardcodes absolute paths in some
> of its control files. What I see is while running git from within the
> repo but outside the contained scope, is git itself complaining with
> messages like this:
> 
> error: object directory /workdir/blah/blah/blah does not exist; check
> .git/objects/info/alternates. fatal: bad object HEAD docker
> 
> I'm using crops/poky as suggested in [1] hence bind mounting a volume
> with the entire project rootdir under /workdir within the container.
> 
> Any suggestion how to make this more friendly, other than moving the
> entire git workflow inside the same or another container that bind
> mounts the volume at the same location? I'm curious to know if/how
> people try to leverage the isolation of containers and how they do
> mitigate sharp edges I found in migrating builds to them.
> 
> [1] https://github.com/crops/poky-container
> 

Yes, I have been doing it for some time pretty regularly, the idea is to 
map the directories identically into container to avoid these kind of errors

you can look at this here

http://bec-systems.com/site/1281/using-docker-for-oeyocto-builds

The template we use is here

https://github.com/kraj/oe-build

look at https://github.com/kraj/oe-build/blob/master/envsetup.sh#L540
how docker is tamed :)

