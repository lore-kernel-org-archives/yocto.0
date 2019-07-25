Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9DDD7E00D5F; Thu, 25 Jul 2019 02:31:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jupiter.hce[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.54 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com
	[209.85.166.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A740E00D4A
	for <yocto@yoctoproject.org>; Thu, 25 Jul 2019 02:31:03 -0700 (PDT)
Received: by mail-io1-f54.google.com with SMTP id q22so95793679iog.4
	for <yocto@yoctoproject.org>; Thu, 25 Jul 2019 02:31:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=uae/81QQ7DJkBag7CdUgpe2fch673en2G/RfzO6qt+c=;
	b=FfuOVvpm2J5SyBoQCyBb4YxLL5wIbJhzNj06yVWTziYfIoiQ5rXj14uR1fmQMp7Zyw
	P+kfNc1OTrWiE23xLBQdocOw+Lrfka1pKKbcbE7n2iVXcNhYVNVYmXN6x+AFqPSrsow7
	IRZBjQvUIFhiuLIZQc6JFxAWZIVvcoBGFfs+50G5RFVgTmOHjQqV4n35vyq+C5LLy9Fx
	b0udTQ6RVjQiew+Mt4QuEREw/qdsN4dLLUNP0JBVuhaft+h30eO4KvrXmZojI789IMnK
	+GOP8EkTFyIa17MR8WnUlAgvY9gJe8pZi76hcfm3BMsox4L9M0EErOSBhx7QNZeip0be
	nkqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=uae/81QQ7DJkBag7CdUgpe2fch673en2G/RfzO6qt+c=;
	b=CfFCi1DA2bpOMhxduaGfYs+r6l1dpFSR6xjtWSCzGqvmJTmlf3S4mcTsT55rtYtqXO
	+v0qbAEqPecCajzDr0TaVjm2Lu35TRek7uRpCXvv8Aco/MWXQ3k40wKMZfSoJecsM8Gr
	qFwMRJnZIFyMPFukiqy1Nap0hz/7G29iHDzh1fpRonb0Ojzwwz8Me0G4hD2cipdr76nu
	g6VG8GqJCHmCbl6DXMxBy0gR+UXzarRbb+GZAYLgfRJX5VsjTN8DYrb19gSHs2+C6EEW
	Z4qWEr4gxvHYzmkgMWDaUx7CQcDJ31zVrtiud59ZCr6kDjOsy06SsxyWjCQRS+9ES6aO
	AWeg==
X-Gm-Message-State: APjAAAV8b8dtoByh040PXJvE/q/OBUVNRpq5+rEEMOfI2KTYHcDjJ3EJ
	IQYiPGDnVXclClsTeFb4oIK6p87XGqusyUsDaTC9jgo8
X-Google-Smtp-Source: APXvYqz2m6ZcP3+OkUdmhtiDNUGnUw+yfRvDQRTIyOfop1Q+kctF9GQqZuXpeDhWgh4gcHiMbn/sAN9K/nQ1cV/njcQ=
X-Received: by 2002:a05:6602:22cc:: with SMTP id
	e12mr17620075ioe.192.1564047063453; 
	Thu, 25 Jul 2019 02:31:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:a712:0:0:0:0:0 with HTTP; Thu, 25 Jul 2019 02:31:02
	-0700 (PDT)
In-Reply-To: <CAGAf8LyiX7-tkZf07A7bQwkndYcdGQpFm=Aq_hnMNt6e_OTvLQ@mail.gmail.com>
References: <CAA=hcWTJ_URf273D+6cp8JkeT=9oP5My37Lj22Ho_y5fNmT4=A@mail.gmail.com>
	<CAGAf8LzwJeTMLSVEKWdpTpbG+=XQdQxB7+zSKewm+oeDMVUrPA@mail.gmail.com>
	<CAGAf8LyiX7-tkZf07A7bQwkndYcdGQpFm=Aq_hnMNt6e_OTvLQ@mail.gmail.com>
From: JH <jupiter.hce@gmail.com>
Date: Thu, 25 Jul 2019 19:31:02 +1000
Message-ID: <CAA=hcWQcXJN9ZA210CR-Uu15i893=YxH-MDxneJXqbQnJgu=gg@mail.gmail.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: How to fix SSH interfactive promotion for Yocto Linux embedded system
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
X-List-Received-Date: Thu, 25 Jul 2019 09:31:04 -0000
Content-Type: text/plain; charset="UTF-8"

Thanks Zoran and Burton.

- jupiter

On 7/25/19, Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com> wrote:
> And, YES, since BysuBox supplies very reduced set of commands...
>
> You should put these options
>> -o ServerAliveInterval=60 -o ExitOnForwardFailure=yes -o
>> ServerAliveCountMax=3 -o StrictHostKeyChecking=no -o
>> UserKnownHostsFile=/dev/null ...
>
> in the following file:/etc/ssh/ssh_config
>
> Hope this helps.
>
> Zoran
> _______
>
> On Thu, Jul 25, 2019 at 5:00 AM Zoran Stojsavljevic
> <zoran.stojsavljevic@gmail.com> wrote:
>>
>> > scp .... -o ServerAliveInterval=60 -o ExitOnForwardFailure=yes -o
>> > ServerAliveCountMax=3 -o StrictHostKeyChecking=no -o
>> > UserKnownHostsFile=/dev/null ...
>>
>> Format of your command is wrong... scp assumes your options as files
>> to be transferred.
>>
>> You need to compile better command, something like:
>> scp <file to transfer> user_name@host_IP_address:/directory path>
>> https://www.youtube.com/watch?v=fmMg6cyww14
>>
>> Zoran
>> _______
>>
>> On Thu, Jul 25, 2019 at 3:10 AM JH <jupiter.hce@gmail.com> wrote:
>> >
>> > Hi,
>> >
>> > I am running busybox in imx6 using ssh and scp in shell scripts, but I
>> > troubled to run the scripts to run ssh and scp, it did not have ssh
>> > options stopped at following:
>> >
>> > scp .... -o ServerAliveInterval=60 -o ExitOnForwardFailure=yes -o
>> > ServerAliveCountMax=3 -o StrictHostKeyChecking=no -o
>> > UserKnownHostsFile=/dev/null ...
>> >
>> > ECDSA key fingerprint is
>> > SHA256:rAS+4gVqPJj7yfVDHlhG1g5bQP+VgMczooGifv+H9vk.
>> > Are you sure you want to continue connecting (yes/no)
>> >
>> > cp: can't stat '-o': No such file or directory
>> > cp: can't stat 'ServerAliveInterval=60': No such file or directory
>> > cp: can't stat '-o': No such file or directory
>> > cp: can't stat 'ExitOnForwardFailure=yes': No such file or directory
>> > cp: can't stat '-o': No such file or directory
>> > cp: can't stat 'ServerAliveCountMax=3': No such file or directory
>> > cp: can't stat '-o': No such file or directory
>> > cp: can't stat 'StrictHostKeyChecking=no': No such file or directory
>> > cp: can't stat '-o': No such file or directory
>> > cp: can't stat 'UserKnownHostsFile=/dev/null': No such file or
>> > directory
>> > root@solar:/tmp# ssh-keyscan SaController >>
>> > /home/root/.ssh/known_hosts
>> >
>> > What will be effective and simple solution in Yocto?
>> >
>> > - Replace busybox by bash recipe.
>> >
>> > - Install openssh-client to run ssh-keyscan to write the target to
>> > .ssh/known_hosts
>> >
>> > Appreciate your advice for Yocto Linux embedded system.
>> >
>> > Thank you.
>> >
>> > Kind regards,
>> >
>> > - jupiter
>> > --
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>

