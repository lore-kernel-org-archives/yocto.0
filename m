Return-Path: <philip@balister.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B04F0E00D72; Fri, 15 Dec 2017 06:36:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.168.135.166 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from starfish.geekisp.com (starfish.geekisp.com [216.168.135.166])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B1B6E00D69
	for <yocto@yoctoproject.org>; Fri, 15 Dec 2017 06:35:59 -0800 (PST)
Received: (qmail 6357 invoked by uid 1003); 15 Dec 2017 14:35:58 -0000
Received: from unknown (HELO ?192.168.11.142?)
	(philip@opensdr.com@71.171.10.116)
	by mail.geekisp.com with (DHE-RSA-AES128-SHA encrypted) SMTP;
	15 Dec 2017 14:35:58 -0000
To: colin.helliwell@ln-systems.com, yocto@yoctoproject.org
References: <02f301d375a9$aa394880$feabd980$@ln-systems.com>
From: Philip Balister <philip@balister.org>
Message-ID: <127a4a89-0e6b-2da3-748e-43511d57799f@balister.org>
Date: Fri, 15 Dec 2017 09:35:57 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <02f301d375a9$aa394880$feabd980$@ln-systems.com>
Subject: Re: Using a poky recipe's files in a custom recipe
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
X-List-Received-Date: Fri, 15 Dec 2017 14:36:00 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-MW
Content-Transfer-Encoding: 7bit

On 12/15/2017 08:36 AM, colin.helliwell@ln-systems.com wrote:
> The current Poky I'm using (krogoth) has a recipe for dropbear, but I want
> to upgrade to use the latest version of dropbear.
> For source control reasons, I don't want to modify what's in
> meta/recipes-core/dropbear and therefore want to have my own recipe in my
> own layer. Yet for cleanliness I'd also prefer not to have to replicate all
> its .inc file etc in my own layer.
> Is there a clean way to be able to include meta's files within my own
> recipe? Is it a case of some sort of FILESEXTRAPATHS entry, and what would
> be the best way to cross reference to the poky layer?
>

I'm thinking if you

require recipes-core/dropbear/dropbear.inc

it uses BBPATH to search for the inc file, so it will pick up the one in
meta.

Philip

