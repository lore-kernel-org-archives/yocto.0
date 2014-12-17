Return-Path: <philip@balister.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0D6C7E00521; Wed, 17 Dec 2014 13:19:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from starfish.geekisp.com (starfish.geekisp.com [216.168.135.166])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id F3F23E002F9
	for <yocto@yoctoproject.org>; Wed, 17 Dec 2014 13:19:20 -0800 (PST)
Received: (qmail 3483 invoked by uid 1003); 17 Dec 2014 21:19:19 -0000
Received: from unknown (HELO ?192.168.1.109?) (philip@opensdr.com@71.171.45.99)
	by mail.geekisp.com with (DHE-RSA-AES128-SHA encrypted) SMTP;
	17 Dec 2014 21:19:19 -0000
Message-ID: <5491F356.80403@balister.org>
Date: Wed, 17 Dec 2014 16:19:18 -0500
From: Philip Balister <philip@balister.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: John Unland <opensourcejohn2112@gmail.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <1418850045.7263.7.camel@gmail.com>
In-Reply-To: <1418850045.7263.7.camel@gmail.com>
Subject: Re: Using YP for non-embedded purposes.
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
X-List-Received-Date: Wed, 17 Dec 2014 21:19:24 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 12/17/2014 04:00 PM, John Unland wrote:
> Hello everyone,
> 
> I am developing a linux distro for small businesses and I am wanting to
> have a easy to use tool to develop that OS. However with the main-line
> distros there is a lot of hoops to jump over to get to that point
> (re-branding, remove certain software, etc). So I was wondering is it
> possible to use the tool and it's documentation to develop a
> non-embedded linux using YP?

I do not see any problem doing this, after all OpenEmbedded is a build
system and scales form small to large systems. It is just most work is
focused on the smaller end.

Philip


> 
> Thank you,
> John
> 

