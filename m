Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F265CE01686
	for <yocto@yoctoproject.org>; Wed,  2 Oct 2013 12:20:36 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 0333AF811DA; Wed,  2 Oct 2013 13:20:35 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id C5482F811DA;
	Wed,  2 Oct 2013 13:20:33 -0600 (MDT)
Message-ID: <524C720E.1090009@mlbassoc.com>
Date: Wed, 02 Oct 2013 13:20:46 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.0
MIME-Version: 1.0
To: Trevor Woerner <trevor.woerner@linaro.org>
References: <2C94F567F1334C30A5BBD2CA59576460@PAULD>	<521D354E.1020909@mlbassoc.com>	<8EB78E64DFE9436EAFB462E357C464EC@PAULD>	<521DD72D.2020102@mlbassoc.com>
	<CALmOhgnU1vHzM263H=CtXxayw4GaTGdTxdB5gG9=CQpe8+DMXg@mail.gmail.com>
In-Reply-To: <CALmOhgnU1vHzM263H=CtXxayw4GaTGdTxdB5gG9=CQpe8+DMXg@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Can anything be done about do_rootfs speed?
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
X-List-Received-Date: Wed, 02 Oct 2013 19:20:39 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-10-02 10:37, Trevor Woerner wrote:
> On 28 August 2013 06:55, Gary Thomas <gary@mlbassoc.com> wrote:
>> Hopefully
>> someone will document all of this in great detail some day. (in fact I filed
>> a
>> bug to this end many years ago...)
>
> It would appear that
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=1088 can now be
> closed as a result of commit 581778c52493b662f449bbbed36453f161501c18
> in git://git.yoctoproject.org/yocto-docs.

Technically, yes, but the section on IPK based systems is incredibly
thin.  I would be hard pressed to figure this out if I didn't know how
to do it already.  I can't really comment on the RPM section as I don't
use that method.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

