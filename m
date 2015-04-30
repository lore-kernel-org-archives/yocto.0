Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3D9E2E00993; Thu, 30 Apr 2015 05:30:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1236AE007CC
	for <yocto@yoctoproject.org>; Thu, 30 Apr 2015 05:29:59 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id D4DDBF811E1; Thu, 30 Apr 2015 06:29:58 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id A77DEF81199;
	Thu, 30 Apr 2015 06:29:57 -0600 (MDT)
Message-ID: <5542205B.2040609@mlbassoc.com>
Date: Thu, 30 Apr 2015 06:30:19 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <5540E846.5010202@mlbassoc.com>
	<CAMKF1sqjwfh=LYAJu781B-JjBEYuBk6OohkqXu+B7YrYpC6HtQ@mail.gmail.com>
In-Reply-To: <CAMKF1sqjwfh=LYAJu781B-JjBEYuBk6OohkqXu+B7YrYpC6HtQ@mail.gmail.com>
Subject: Re: Heads up
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
X-List-Received-Date: Thu, 30 Apr 2015 12:30:04 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-04-30 01:45, Khem Raj wrote:
> On Wed, Apr 29, 2015 at 7:18 AM, Gary Thomas <gary@mlbassoc.com> wrote:
>> This is just a note that the recent upgrade of util-linux
>> to version 2.26.1 (from 2.25.2) was much more major than
>> the version change implies.  The 'sfdisk' tool changed a
>> lot and will no longer be compatible with many scripts out
>> there that still use it.
>
> Can we document the needed differences and info for users ?
> may be it will handy in release notes too eventually when release time comes
>

 From the 2.26 release notes:
  This version provides a completely new sfdisk(8) command; the new version is
  based on libfdisk. If your use cases depend on sfdisk(8), then it is strongly
  recommended to be careful and re-test your scripts. The new version supports
  MBR and GPT disk labels (SGI and SUN are also supported but not well tested).
  The new version no longer supports some obscure MBR-specific command-line
  options nor legacy CHS addressing.

What this means is that any script (there are a ton of them out there)
that tries to create a label for a disk device using Cylinder-Head-Sectors
style will have to be rewritten as the new sfdisk only does sector unit
addressing.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

