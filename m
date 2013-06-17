Return-Path: <gary@mlbassoc.com>
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7C77E01483
	for <yocto@yoctoproject.org>; Mon, 17 Jun 2013 10:33:09 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 2A9C368A01A; Mon, 17 Jun 2013 18:33:05 +0100 (BST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	loki.analogue-micro-ltd.com
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.12.145] (unknown [192.168.12.145])
	by mail.analogue-micro.com (Postfix) with ESMTP id 5851C68A019;
	Mon, 17 Jun 2013 18:33:03 +0100 (BST)
Message-ID: <51BF484F.9070009@mlbassoc.com>
Date: Mon, 17 Jun 2013 18:33:03 +0100
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130510 Thunderbird/17.0.6
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAGxOggHpJNSb6vetbD40+ww-iyVxS3cUaZVhOF1t_OFCfQ4zSw@mail.gmail.com>
In-Reply-To: <CAGxOggHpJNSb6vetbD40+ww-iyVxS3cUaZVhOF1t_OFCfQ4zSw@mail.gmail.com>
Subject: Re: Yocto Layers not getting recognized by bitbake
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
X-List-Received-Date: Mon, 17 Jun 2013 17:33:09 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-06-17 18:08, varun bhatnagar wrote:
> Hi,
>
> I am trying to compile my code using yocto. For that I have created two layers: "meta-networking" and "meta-oe". I have added these dependencies in bblayer.conf too. But these are
> not getting build. Can anyone please tell me what should I do to make this work.

More details are needed to be able to help.

What do you mean "not getting built"?  Do you mean that if you
try to build recipe XYZ which is in one of those layers that it's
not being built?  Or perhaps you mean something else?

What do you mean "created two layers: ..."?  Did you just extract
these from meta-openembedded?  or something else?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

