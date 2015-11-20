Return-Path: <philip@balister.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2819DE00B5E; Fri, 20 Nov 2015 06:57:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [216.168.135.167 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from sanddollar.geekisp.com (sanddollar.geekisp.com
	[216.168.135.167])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id C4AF7E00B30
	for <yocto@yoctoproject.org>; Fri, 20 Nov 2015 06:56:58 -0800 (PST)
Received: (qmail 5435 invoked by uid 1003); 20 Nov 2015 14:56:57 -0000
Received: from unknown (HELO ?192.168.11.125?)
	(philip@opensdr.com@71.171.14.127)
	by mail.geekisp.com with (DHE-RSA-AES128-SHA encrypted) SMTP;
	20 Nov 2015 14:56:57 -0000
To: Gary Thomas <gary@mlbassoc.com>, Yocto Project <yocto@yoctoproject.org>
References: <564F3276.10602@mlbassoc.com>
From: Philip Balister <philip@balister.org>
Message-ID: <564F34B8.9020801@balister.org>
Date: Fri, 20 Nov 2015 09:56:56 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <564F3276.10602@mlbassoc.com>
Subject: Re: Change in behaviour
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
X-List-Received-Date: Fri, 20 Nov 2015 14:57:02 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 11/20/2015 09:47 AM, Gary Thomas wrote:
> This commit:
>   commit 536b73f55f51fcea555338f9a557fe86c09d00cb
>   Author: Richard Purdie <richard.purdie@linuxfoundation.org>
>   Date:   Sun Oct 11 10:21:20 2015 +0100
>     bitbake: data_smart: Only support lowercase OVERRIDES
> breaks the use of capital letters, specifically in MACHINE names.
> I use this a lot, along with COMPATIBLE_MACHINE, to share recipes
> amongst similar machines.
> 
> The commit says it could be conditional.  How hard (and how)
> would it be to do that?
> 

A little background:

http://openembedded.org/wiki/OEDEM_2015#Metadata

Philip

