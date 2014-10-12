Return-Path: <paul.betafive@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E168E00888; Sun, 12 Oct 2014 04:34:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qa0-f50.google.com (mail-qa0-f50.google.com
	[209.85.216.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B007EE007A2
	for <yocto@yoctoproject.org>; Sun, 12 Oct 2014 04:34:39 -0700 (PDT)
Received: by mail-qa0-f50.google.com with SMTP id w8so3343321qac.23
	for <yocto@yoctoproject.org>; Sun, 12 Oct 2014 04:34:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=5j/He5kwY7M3UkRZGDaQ3qoAoWBRQEF3AivAfd1xV+4=;
	b=JYIszu9A9cz03n4SfVJGl2FepPhkmPkXVRwyogqi1DxSnQb20nop8HQvmaYfeyqj4h
	P0ucvwz5hHhJ3sdLSlhDD+5rrHF0tfymaZs5xonp+zZ8VTWEe61FZr1Y/S1i0NthHXNN
	OKfA9SFLqQ3k/Bhew/pFhcPBxvwKNrD67KNj0BLZts0JUWBwdJCY8RdrVC9S6waai52Z
	//2a3I2RW9YcDjzM45pScImR9JIdYj8xvkCh9yFSLa+MDz4hdoZ2TvxgtijkcT3jM1YC
	5+WSFvp/CV0hGJRvz81l4WMBxHnykDbG8VNLlPrjj1QdmiL6PiGegiPyZrnln3rqHYG0
	gjrQ==
X-Received: by 10.224.128.134 with SMTP id k6mr29461280qas.69.1413113678907;
	Sun, 12 Oct 2014 04:34:38 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.140.142.78 with HTTP; Sun, 12 Oct 2014 04:33:58 -0700 (PDT)
In-Reply-To: <20141012005156.D66DC2C0219@ubuntu1204.osl.yoctoproject.org>
References: <20141012005156.D66DC2C0219@ubuntu1204.osl.yoctoproject.org>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Sun, 12 Oct 2014 12:33:58 +0100
X-Google-Sender-Auth: DcVYjgZqJYPumxCFSefY2-khq7c
Message-ID: <CANyK_8fVecgg=pZnV9fwqz=YB3OM9mmm2MN4JD=L0ct15qKBpQ@mail.gmail.com>
To: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Release Candidate Build for yocto-1.7.rc4 now available.
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
X-List-Received-Date: Sun, 12 Oct 2014 11:34:42 -0000
Content-Type: text/plain; charset=UTF-8

On 12 October 2014 01:51, Poky Build User
<pokybuild@ubuntu1204.osl.yoctoproject.org> wrote:
>
> This is an automated message from
> The Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder
> Email: elizabeth.flanagan@intel.com

Beth,

I noticed that the Cc list for the original email looks to be corrupted:
    Cc: ""@ossystems.com.bryi.zhao, elizabeth.flanagan@intel.comyocto,
         ""@windriver.com, ""@yoctoproject.orgalexandru.c.georgescu,
         ""@intel.comotavio

Just letting you know incase you missed this and it needs attention,

-- 
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

