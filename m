Return-Path: <opensource@keylevel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 26FCDE008ED; Mon,  3 Nov 2014 09:34:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from a180.4uh.net (a180.4uh.net [89.248.60.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1C0BE00874
	for <yocto@yoctoproject.org>; Mon,  3 Nov 2014 09:34:15 -0800 (PST)
Received: from durham.keylevel.com ([88.97.63.243]:7981
	helo=macbook-pro.durham.keylevel.com)
	by a180.4uh.net with esmtpsa (TLSv1:AES128-SHA:128) (Exim 4.82)
	(envelope-from <opensource@keylevel.com>)
	id 1XlLW4-001bt4-Dk; Mon, 03 Nov 2014 17:34:10 +0000
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <1415027299.5111.18.camel@ted>
Date: Mon, 3 Nov 2014 17:33:51 +0000
Message-Id: <428B95B0-9512-4580-9C49-24956246F8C8@keylevel.com>
References: <54551DFF.6060000@gmail.com> <54552CB3.30002@gmail.com>
	<1851809.saLbNT2Y4Q@peggleto-mobl5.ger.corp.intel.com>
	<54556BF4.2020803@gmail.com> <1415027299.5111.18.camel@ted>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
X-Mailer: Apple Mail (2.1878.6)
X-OutGoing-Spam-Status: No, score=-2.4
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - a180.4uh.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: a180.4uh.net: authenticated_id:
	chris.tapp@keylevel.com
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
Subject: Re: Angstrom Build Fails
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
X-List-Received-Date: Mon, 03 Nov 2014 17:34:20 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On 3 Nov 2014, at 15:08, Richard Purdie =
<richard.purdie@linuxfoundation.org> wrote:

> On Sat, 2014-11-01 at 19:25 -0400, nick wrote:
>> This isn't a network issue as I can fetch Yocto sources from other =
servers without=20
>> any problems.
>=20
> It can a network issue, routes to different places go through =
different
> servers and so whilst less common than complete network failure, you =
can
> have a DNS problem or a routing problem to certain hosts, maybe not in
> your local network but in that of your provider.

Seems to be a bit of this going on today.

Sites like http://downforeveryoneorjustme.com/ can help resolve if its a =
local or global issue.

--

Chris Tapp
opensource@keylevel.com
www.keylevel.com

----
You can tell you're getting older when your car insurance gets real =
cheap!


