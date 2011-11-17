Return-Path: <philip@balister.org>
Received: from starfish.geekisp.com (mail.geekisp.com [216.168.135.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2E7FE00307
	for <yocto@yoctoproject.org>; Thu, 17 Nov 2011 06:25:37 -0800 (PST)
Received: (qmail 3322 invoked by uid 1003); 17 Nov 2011 14:25:36 -0000
Received: from unknown (HELO ?192.168.1.111?) (philip@opensdr.com@96.240.172.5)
	by mail.geekisp.com with (DHE-RSA-AES256-SHA encrypted) SMTP;
	17 Nov 2011 14:25:36 -0000
Message-ID: <4EC5195F.5060302@balister.org>
Date: Thu, 17 Nov 2011 09:25:35 -0500
From: Philip Balister <philip@balister.org>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.24) Gecko/20111108 Fedora/3.1.16-1.fc14 Thunderbird/3.1.16
MIME-Version: 1.0
To: Rainer Koenig <Rainer.Koenig@ts.fujitsu.com>
References: <CA+YB3ray8bX94Y1subz+7CQYUzRJWjHS2CQX_W2boA2BV7A5ZA@mail.gmail.com>
	<4EC506D2.3080901@ts.fujitsu.com>
In-Reply-To: <4EC506D2.3080901@ts.fujitsu.com>
X-Enigmail-Version: 1.1.2
Cc: yocto@yoctoproject.org
Subject: Re: Yocto usability questions
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 17 Nov 2011 14:25:38 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 11/17/2011 08:06 AM, Rainer Koenig wrote:
> Hi Jeff,
> 
> On 16.11.2011 23:07,  Jeff Osier-Mixon wrote:
> 
>>> Mark & everyone else listening:
> I include myself in the "everyone" group and answer. ;-)
> 
> Another problem seems, that you always need to work on the *latest*
> version of the recipe-trees since they are depending from the
> availability of the upstream sources. If sources change, disappear or
> move then the recipe needs to be adapted. Now I know that, but in the
> beginning it was just frustrating to get error messages any time I tried
> to build something.
> 

This is the number one issue with the openembedded-core/meta-oe
combination. There is no system in place to publish a list of known good
revisions for people who are trying to get real work done. Currently,
I'm stuck because guile won't build. (I also see the samba issue, but
dropped it from gvfs). I've been around a long time, and there are still
some build issues that stump me. Personally, I need this stuff to work
so I can get stuff done for paying customers. I don't care if recipes
are perfect, or we have the latest version of everything, something that
builds reliably on a number of build machine distros is what we really need.

Philip

