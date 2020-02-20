Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.2916.1582159119238077222
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Feb 2020 16:38:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=vAC5kucz;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jupiter.hce@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AAE81E015FC; Wed, 19 Feb 2020 16:38:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (jupiter.hce[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.166.54 listed in list.dnswl.org]
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com [209.85.166.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29367E01432
	for <yocto@yoctoproject.org>; Wed, 19 Feb 2020 16:38:38 -0800 (PST)
Received: by mail-io1-f54.google.com with SMTP id h8so2747206iob.2
        for <yocto@yoctoproject.org>; Wed, 19 Feb 2020 16:38:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=6VByQVCjO0V7eKDeoOIeABNS36ayIVTFjhSJ5ZAMHCs=;
        b=vAC5kuczPUSvYBEKVvkPs7kxfqCTz0QEDSBev89l2r5BbWyFiclJhTp5BKhUyoD6+D
         Zc+U2i8NdzQyGcDYixgup3aa0sCOLV7Rwmg0441RgmnUxkh5j9wiE6EosZY5Role0Cat
         7th1sHXtfDnmNfDXih8r6xEibl86aPhTQve91vSpDY21wyTSlt0MGTB7ovqDNofFXWe9
         Ic6iNCI6DWZ3UkiI0X9xdHGWVZFL0XYw5ON+Gwy/dD+IKSANmR+gz9pjDNRKKSXkyiw8
         uZdw0/lRO02aoAC6nnM0AbFw7rzE9Gp0rofl1VZ4ubS/Bzh9mPPiVSWhx00WowBubDWI
         gLuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=6VByQVCjO0V7eKDeoOIeABNS36ayIVTFjhSJ5ZAMHCs=;
        b=S53PWS4yMG6aEopaDjXMuryR4gmNQ6msV/ANim3jiI3jPPOpQOmjArfR19W1xuW0z1
         XiNVa5JVHOq5iWo7WVBDOVSgXUHk9HCpVQer5Ql/UMYq/uUKUA56mi3UGesn9H7QGdtq
         CnD/48UyKVTfhF5t1Bf8yXsMkrYYonkWWNBzp4iG2ik4/55YVkSCxLs0OevmnYlgFAfL
         oSKRmNZKd+aTQ8bkyEtVbrkzc7SWTw5bQsqXn2nn7k5o6CysM4NdxtTWAUC4pWdPoaZI
         2S+DA6NpPxDgDh04vQG9yHxStzDYQiFWcpU29/LbJHlmkH4SCmmQCJDEaD8/ym1hAe5J
         wNtA==
X-Gm-Message-State: APjAAAU6nFeqwgMtiUDlB6jQHO9z6RKGbzp3ja1ik8rbB8/h2VNwQFHT
	OCZKyyvTG2bUP3wwlX3cQdm95bHZR+oPFGbqOj/tMA==
X-Google-Smtp-Source: APXvYqy1WYou8oN6fXfmwaX15Id4RToOqfZscPleDYTkWdD+RjGPvNcvqvrTV8Gx4W3/0SmzgyxiI0urzSPY7g5w5qM=
X-Received: by 2002:a6b:d912:: with SMTP id r18mr21016548ioc.306.1582159117617;
 Wed, 19 Feb 2020 16:38:37 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ad5:5d0d:0:0:0:0:0 with HTTP; Wed, 19 Feb 2020 16:38:37
 -0800 (PST)
From: "JH" <jupiter.hce@gmail.com>
Date: Thu, 20 Feb 2020 11:38:37 +1100
Message-ID: <CAA=hcWS60Jr0aQ+qVqMoxyU90VPvC_cUyWKjsujqkWxPXLL8NQ@mail.gmail.com>
Subject: You advice to append environment set up to local root shell profile
To: Patches and discussions about the oe-core layer <openembedded-core@lists.openembedded.org>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

I want to setup export LD_LIBRARY_PATH and export PATH to the
/home/root shell profile, the oe-core base-files has a profile file,
is it a right way to copy that file to my application layer, to extend
it and to add new path to export LD_LIBRARY_PATH and export PATH? I'll
handle it by a base-files_%.bbappend in my application layer.

Thank you.

Kind regards,

- jh
