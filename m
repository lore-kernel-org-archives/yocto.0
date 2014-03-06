Return-Path: <paul.betafive@gmail.com>
Received: from mail-ve0-f178.google.com (mail-ve0-f178.google.com
	[209.85.128.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D97BDE00734
	for <yocto@yoctoproject.org>; Thu,  6 Mar 2014 04:58:31 -0800 (PST)
Received: by mail-ve0-f178.google.com with SMTP id jw12so2526976veb.37
	for <yocto@yoctoproject.org>; Thu, 06 Mar 2014 04:58:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=8G3fDeplY25HHm0561IgwlwnEAnmQ2cO2kXbNVtc6HA=;
	b=GRoQf1Lh6F3/X7swlID+ECweplg/9SpqVs3kyPj1/jrMtSYdrwQiSg7vkZteKjcKh2
	eo/Y7PEo4vpmboT5t9kD++CvxrLjs1oppKDF1BojvEl/VwzJwv4qoJy9uufdNlY5sWFN
	rm2WAu71znJrGSa/cYvS7U59XehNwjaXI4ala+DNcAk7HjauWBtH99V7qUOzFIDqrhkP
	qScw6ftfC/M5R6EKcUYhI5spXCJc9eEsv+Y/6PVKYJbgY7yQf7sE4pPVOLlatqNt//Ra
	/65oUzEywJJ1Ju3yM8f+28vAcN52TdsL+JAZ6xM6ivjTCBYIOj//zrKYMZkTU94A1MyJ
	QXSA==
X-Received: by 10.58.165.68 with SMTP id yw4mr5281016veb.17.1394110710421;
	Thu, 06 Mar 2014 04:58:30 -0800 (PST)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.220.239.135 with HTTP; Thu, 6 Mar 2014 04:57:50 -0800 (PST)
In-Reply-To: <CAMKF1sqWR9CTknPqAx=48w41kVzFm6QG4A3HEW-n+rMoUuzKMQ@mail.gmail.com>
References: <CALXw4G5VUNySyWoOoFbKHnMUWFjZfQKwQCu0T0cWtwGOAMQnow@mail.gmail.com>
	<126717450.ayqcFG2vtF@peggleto-mobl5.ger.corp.intel.com>
	<CALXw4G5Ti_rZ+LWVYivbqeEAyFn2fOTDtYD9kvMBcq94R0X_xg@mail.gmail.com>
	<CAMKF1sqWR9CTknPqAx=48w41kVzFm6QG4A3HEW-n+rMoUuzKMQ@mail.gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Thu, 6 Mar 2014 12:57:50 +0000
X-Google-Sender-Auth: UBGFRbXqDk_a8CEGvBMJE9rxIg4
Message-ID: <CANyK_8fbBHck74MBuz7LjXpcXjGFdExngwJ=5nn-sTHCvoKg5w@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Toolchain
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
X-List-Received-Date: Thu, 06 Mar 2014 12:58:32 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 5 March 2014 21:14, Khem Raj <raj.khem@gmail.com> wrote:
> On Wed, Mar 5, 2014 at 9:00 AM, Michael Gloff <mgloff@emacinc.com> wrote:
>> | *** Error: Package name  contains illegal characters, (other than
>> [a-z0-9.+-])
>
> hmm meta-environment-PMX-090T is a package name and
> thats limitation of opkg backend, if you are too tied to

opkg itself doesn't seem to have this limitation, I just created and installed a
test package named 'A' perfectly fine.

The Debian policy says:
    Package names (both source and binary, see Package, Section 5.6.7) must
    consist only of lower case letters (a-z), digits (0-9), plus (+) and minus
    (-) signs, and periods (.). They must be at least two characters long and
    must start with an alphanumeric character.

So I think the restriction is there to keep generated packages
compatible with dpkg-deb.

We could consider removing the restriction if that compatibility isn't
necessary.

-- 
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

