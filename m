Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 26EABD3B7EA
	for <webhook@archiver.kernel.org>; Mon,  8 Dec 2025 16:45:33 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.1430.1765212324227567505
 for <yocto@lists.yoctoproject.org>;
 Mon, 08 Dec 2025 08:45:24 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=I6h67LSX;
 spf=pass (domain: gmail.com, ip: 209.85.128.54, mailfrom: skandigraun@gmail.com)
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-477a219dbcaso48926965e9.3
        for <yocto@lists.yoctoproject.org>; Mon, 08 Dec 2025 08:45:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765212322; x=1765817122; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=B8ySnMY6zUDcFCBmOrWgF2PQ074+uFLQfaNwxZpeX/k=;
        b=I6h67LSX/+TNHv9Yto4B+tySbvrqiQ0HjmIYElvQoZVnkV5DbF+A8hmyLGeHMR8q5k
         wIzjhNCAajLGXge0DvIp+o6t39/bboHcgQzeDbCzhHhKsVBaKE14308GEsqm1+V215+9
         leO8kOOjuInNjwocDY0PFWGhZrCcsm4Sx1+BQHEWDlICbcwfTnzpzeeikCJnvm5OhaMO
         FpqTkGs0ia/kRzprGNSWeA+ebG4HliMbwqatw3FI9wgiefO9C+zcKELv9IS3RBnBLxgv
         qg4Wldui38ifT6b+PPanvVEMXv9QfOU8QgaoGJVxG5JGAWefj164SV/uZAdjOz5Y+C6/
         Obkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765212322; x=1765817122;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=B8ySnMY6zUDcFCBmOrWgF2PQ074+uFLQfaNwxZpeX/k=;
        b=OFFCNkYj3krXvi1B2ll3S1cyplynDvVBFncCpEjMpaa3K5Tcum5uPvmVRfn73GWftk
         x315SMj3RvBOxdoQTN3dTCw7xUJZhnm9nH8jOYOli/R5rM4+pSCcqtmWnm1BqA44PeAm
         vQv+9pme4eCZYBTePyMD4zvg1qe+ScsCT54xjjeHv3YACtgpEhk0SHFp4WrjxBYRtB5e
         3IHQ7Nc8qaPY96vVWf9BNOomVJ/QKbUv09fxF9dzLR4Tl22Di/50IOsEOxEuh3QvSq+a
         V7MguKRziIQHAucM5+nuhfM4ux5Y4a0A4EP+FxDS2dnF1HcdquO+1xnUjdqWTTx5NpsJ
         oTgQ==
X-Forwarded-Encrypted: i=1; AJvYcCWAY5oJSsSqK1G7i7y+ibfjHolD0voQLygK7H88A+OUFGbJsI3Cz55LM0os7a4ApCJwv26TXg==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YwjWOipmuPvMFkZkaZbyvRen6+aJTnZhN964HoZ2RK+4oIeBpLr
	lY6PQhsyrnukpvQ9B5ZoSv/SHXOtbvVBH+QKsBA35tLLbGKfNOK6+hDu
X-Gm-Gg: ASbGncsUwJpOMgpIa2CsNl4TFPV1Yq+kqgTl6qn1LxSyAp5skPDu1VLu64TR/RpApPJ
	jgRyJwFb5RFKlx/WBHVlx5ArvNPSoKvLOeCzmxCPV/USCo1ohB7RifIw+7+xKEahKACT6o7QFdR
	LnLnouM9uHRbqq+dzAdvyrqy65OKEu+4KLSow2zddMhekD7rITRwdq+LFC3l4olRZhix2hkStlA
	SSEAOAmvRavf8aDDtBfhn6qTSeBkVzK4EykdElN2mbr9vikyCUgeZLiKGmlMQ8WeF23gadjfNMh
	hH+2DCXB9RcqPAs9WUSW7MQYcqT6k5mUZ1I+m1by6dUT1kBEy6NlAAkOYejzV5Qxa9fj3oewSES
	Z1cpZKTxaKKX8FcGWAyMigA6ZmGbpkwwdF/pYmFTWD5SdW7Pq4K16obRI/c+VnNPiEvN4tW1Goy
	da35uuYGdJYu1/z31oHXo=
X-Google-Smtp-Source: AGHT+IFQ/fAsY86u8wmtVJ+pnc6KFsvw2pcUsHWzXQ++wvgDplLRxcwrVBuu3ovB/Cviq96sG2xACQ==
X-Received: by 2002:a05:600c:5306:b0:479:1ac2:f9b8 with SMTP id 5b1f17b1804b1-47939e23998mr90631325e9.21.1765212322505;
        Mon, 08 Dec 2025 08:45:22 -0800 (PST)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47936f651dfsm204260385e9.5.2025.12.08.08.45.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Dec 2025 08:45:22 -0800 (PST)
Message-ID: <b0a57d8d-0267-46d1-b51b-e1efc5a5fa77@gmail.com>
Date: Mon, 8 Dec 2025 17:45:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Bitbake fetch does not re-fetch from network if gitrepo
 is found in DL_DIR
To: Alexander Kanavin <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org
References: <MUyE.1764856618420625622.Sp84@lists.yoctoproject.org>
 <6a0d63c8-3a01-44a3-bc52-27ce3f5587dc@gmail.com>
 <96936.1764884505239996619@lists.yoctoproject.org>
 <33793480-bdcc-4b88-ab11-0d493118836e@gmail.com>
 <CANNYZj8A46=oc3sD=F2H=A33rjmue=tVhTtVBJTabfO3EJLuDQ@mail.gmail.com>
 <96c47e76-9e94-4d53-90a1-57488b165612@gmail.com>
 <CANNYZj-x+c_QTSaLPSwMkLPBpG16UdOcNcQCREnBYK3a=11WmA@mail.gmail.com>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <CANNYZj-x+c_QTSaLPSwMkLPBpG16UdOcNcQCREnBYK3a=11WmA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 08 Dec 2025 16:45:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66100



On 12/8/25 11:31, Alexander Kanavin wrote:
> On Fri, 5 Dec 2025 at 19:12, Gyorgy Sarvari <skandigraun@gmail.com> wrote:
>>>> If fetch is deemed successful, it is stored in the shared state cache,
>>>> and then it is not repeated until the relevant signature changes - I
>>>> think this is the metadata reference you found.
>>>> However as long as the download folder's content is only modified by one
>>>> project only, it supposed keep track of it fine.
>>>>
>>>> One question about the DL_DIR: is it possible that it is shared between
>>>> multiple projects, while keeping separate shared state cache? Or that
>>>> the DL_DIR's content modified manually?
>>>> The shared state cache supposed to keep track of what is downloaded by
>>>> bitbake and what is not, but if the DL_DIR's content is changed without
>>>> bitbake (or by a separate bitbake), that can break the shared state, and
>>>> cause such issues.
>>> This is not correct. Shared state does not track what is downloaded.
>> It depends on how you interpret it. Sstate does track the do_fetch task,
>> and does know if it needs to re-executed or not.
> The process by which bitbake determines which tasks need to be
> executed, and in which order, is well defined, and it is not like
> that.
>
> This is how it is:
> 1. Bitbake unrolls the target specified on a command line into a
> directed graph, where nodes are tasks and edges are task dependencies.
> Each task is given a signature with a hash.
> 2. For each task bitbake checks if there's a stamp in the build
> directory with a matching hash (meaning the build directory already
> has the outcome of the task), and if so, the task, and everything it
> depends on, is pruned from the graph.
> 3. For each task that is sstate-enabled (neither fetch nor unpack
> tasks are in that set), bitbake checks if sstate contains an object
> matching the task signature. If so, everything that the task depends
> on is pruned from the graph, and the task is replaced with its
> setscene variant that unpacks the sstate.
> 4. Remaining tasks are executed in order that respects their dependencies.
>
> Sstate cache (or code that manages it) does not track tasks, it only
> stores and retrieves sstate objects, and it does not know anything
> about what tasks in a particular build need to be executed.
>
>>> It is also fine to share DL_DIR between multiple builds and projects.
>> I did not write that it is not fine to share DL_DIR, but but you need to
>> know some caveats. If you run bitbake -c cleanall in one project, you
>> are up for a good time in the other one, if they use the same recipe.
> That is fine to do as well, as long as no other builds are running at
> the same time as cleanall. The other project either does not need to
> run fetch/unpack and won't notice sources are absent, or it will run
> fetch, fetch will notice the sources are absent in DL_DIR, and then it
> will simply re-fetch them.

1. Set up a new project project1, with a custom dl_dir
2. Set up a new project project2, with the same custom dl_dir
3. Run bitbake -c fetch $RECIPE in both project1
4. Run bitbake -c fetch $RECIPE in both project2
5. Run bitbake -c cleanall $RECIPE in project1
6. Run bitbake $RECIPE in project2.

Once again - using shared DL_DIR is fine usually (and I never even
implied the opposite of it), but there are gotchas.

On a related note: this is not an order of course, but if you could not
reply, that would be great. I will also go out of my way to avoid direct
communication with you now, and in the future.

> Alex


