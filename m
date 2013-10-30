Return-Path: <paul.betafive@gmail.com>
Received: from mail-vb0-f49.google.com (mail-vb0-f49.google.com
	[209.85.212.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4FACCE017B6
	for <yocto@yoctoproject.org>; Wed, 30 Oct 2013 11:48:23 -0700 (PDT)
Received: by mail-vb0-f49.google.com with SMTP id w20so1167319vbb.8
	for <yocto@yoctoproject.org>; Wed, 30 Oct 2013 11:48:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:from:date:message-id:subject:to:content-type;
	bh=+mctG78fTzwnLIYmgNeBYI5DMQiNHcekPP/XD0bSpsE=;
	b=QvDOZI39q5zhSyV3xNy21s+sJ1gMoObdSHLJ85aTyDqPTiBqx+me2wMu45vK1DTNuV
	HrfbqPNPqp3MCGWzDl2WiZ55OnGQeNf9+zlG1b6oGQBMXloy2jvfoxDIVUY04bkh2vy7
	JuHRVp5Bek0KZJj1DnpxwiO6qOuqDmGhmg1iaCUhYyh5c+AsyLeAbtxx3lA+YvK9w14K
	dDXXxVI0kNoSLmfo+i5knLp9p9bRJEMM/sGyscqYntlcPLY20aBMD9XQuGOCtHo4b0nN
	+XQ3LzHmB6vZxbUm2FLQ92gOl08HvjsdXwC1+r7xflVgRKaKx5gkZyO57Co5BVRl1QWX
	3vFg==
X-Received: by 10.220.144.80 with SMTP id y16mr4007618vcu.4.1383158902574;
	Wed, 30 Oct 2013 11:48:22 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.220.49.71 with HTTP; Wed, 30 Oct 2013 11:47:42 -0700 (PDT)
From: Paul Barker <paul@paulbarker.me.uk>
Date: Wed, 30 Oct 2013 18:47:42 +0000
X-Google-Sender-Auth: fMF2a4nFAgrUsRsq9qEOgy1y6uo
Message-ID: <CANyK_8eA1t1nkN61jbaB5hf3bym3wxGhJA3tKCu3NBqDEWO-jw@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: opkg git and download hosting
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
X-List-Received-Date: Wed, 30 Oct 2013 18:48:24 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi all,

I'm looking at moving opkg away from Subversion hosted on Google Code
to Git hosted elsewhere. Google Code is also closing the downloads
service to new files after January so we'll need somewhere else to put
tarballs of opkg releases. It's previously been mentioned that The
Yocto Project may be able to help us with this. I've got a few
questions on how this would work if we can do it. Is there anyone in
particular I need to talk to or should we just discuss this on list?

Thanks,

-- 
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

