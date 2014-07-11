Return-Path: <daiane.list@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BCA81E00769; Fri, 11 Jul 2014 06:45:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (daiane.list[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.174 listed in list.dnswl.org]
Received: from mail-vc0-f174.google.com (mail-vc0-f174.google.com
	[209.85.220.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A036E00736;
	Fri, 11 Jul 2014 06:44:57 -0700 (PDT)
Received: by mail-vc0-f174.google.com with SMTP id hy4so2057383vcb.33
	for <multiple recipients>; Fri, 11 Jul 2014 06:44:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date:message-id:subject
	:from:to:cc:content-type:content-transfer-encoding;
	bh=kCKkyfdJMQEnDlt/tTJnFBtGD70caJnql9KkvgEzeyQ=;
	b=SEYGNSh3CnLJL1X3ZpnBXjSdpymdfH8+DXP/GOQTfSY2JCqF/I6NvFXsx8t359caM7
	pkEdw4d8pJfXgrS+2rn+crqNEC3xmKiK0cqPI6aLI7HKCtOHDHoOXA3thoKQqnvH/X2Y
	DsecN89YRLv5F8NnEPgwk2vWDKa+2IWxGgWOSMIA1QoQlQAMie9Ngr/5VJdrZ3dR5PYo
	zEhyv5mSwcJ5FJgM+HKB7GAUnAf/PjyRh8gVqD1q9WWpnMa0Z3GN4aZ1Agbb9gZ88Dvy
	VwX2QaFbTtBnrqXWeT76bmNS8ws4Ma5eRGt7vvwncdsrud5R72d81SA7EpgHOhKXcY4c
	bs2g==
MIME-Version: 1.0
X-Received: by 10.58.133.130 with SMTP id pc2mr951602veb.48.1405086296358;
	Fri, 11 Jul 2014 06:44:56 -0700 (PDT)
Sender: angolini@gmail.com
X-Google-Sender-Delegation: angolini@gmail.com
Received: by 10.220.118.132 with HTTP; Fri, 11 Jul 2014 06:44:56 -0700 (PDT)
In-Reply-To: <CAP3RZog91TKaZgjCiDFQhZZaYT8ukVjTE8HZ5pVz9Bz6Jm2J5g@mail.gmail.com>
References: <CAP3RZog91TKaZgjCiDFQhZZaYT8ukVjTE8HZ5pVz9Bz6Jm2J5g@mail.gmail.com>
Date: Fri, 11 Jul 2014 10:44:56 -0300
X-Google-Sender-Auth: o5WUuTzqBDIAyYX80HiYzUm-Aoo
Message-ID: <CA+jg_OXh1ifLRQj6XPZSebA-QdM3wyZR1bGkMY1KGtF3XATaBw@mail.gmail.com>
From: Daiane Angolini <daiane.list@gmail.com>
To: jags gediya <jags.gediya@gmail.com>
Cc: "meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-freescale] unable to get checksum SRC_URI file could not be found
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
X-List-Received-Date: Fri, 11 Jul 2014 13:45:10 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 10, 2014 at 2:16 AM, jags gediya <jags.gediya@gmail.com> wrote:
> I am building yocto for freescale imx6sl evolution kit. For checking
> in source code on svn , i have deleted all .git and .gitignore from
> the meta directories. Then i have checkout the source code, and tried
> to build that. While building i am getting the warning
>
> Unable to get checksum for rfkill SRC_URI entry

is it an ERROR or an WARNING?

I know there is some warning regarding SRC_URI checksum from time to
time from master

> dont.call.git.rev-parse.on.parent.dir.patch: file could not be found
>
> What can be the reason of it?

Do you have more log messages to share?


> Will it create any problem?

it it=C2=B4s warning, I don=C2=B4t think so



Daiane

