Return-Path: <philip@balister.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00069E00998; Mon,  6 Apr 2015 05:42:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from sanddollar.geekisp.com (sanddollar.geekisp.com
	[216.168.135.167])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id DE3D9E00993
	for <yocto@yoctoproject.org>; Mon,  6 Apr 2015 05:41:52 -0700 (PDT)
Received: (qmail 4279 invoked by uid 1003); 6 Apr 2015 12:41:51 -0000
Received: from unknown (HELO ?192.168.11.132?)
	(philip@opensdr.com@108.44.116.31)
	by mail.geekisp.com with (DHE-RSA-AES128-SHA encrypted) SMTP;
	6 Apr 2015 12:41:51 -0000
Message-ID: <55227F0E.3080003@balister.org>
Date: Mon, 06 Apr 2015 05:41:50 -0700
From: Philip Balister <philip@balister.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: Ken Davis <blackt1ger@yahoo.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <5521E589.3010007@yahoo.com>
In-Reply-To: <5521E589.3010007@yahoo.com>
Subject: Re: what's the difference between meta-openembedded/meta-oe and meta-oe/meta-oe
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
X-List-Received-Date: Mon, 06 Apr 2015 12:42:01 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 04/05/2015 06:46 PM, Ken Davis wrote:
> I'm soo confused.
> 
> what's the difference between meta-openembedded/meta-oe and
> meta-oe/meta-oe?
> 

Nothing. The meta-oe (and oe-core) repos are deprecated and will be
removed "soon".

Make sure you use meta-openembedded and openembedded-core checkouts and
refer to them in manifests and scripts.

Philip

