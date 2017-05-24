Return-Path: <philip@balister.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 567CAE00524; Wed, 24 May 2017 13:12:32 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CBC0E00349
	for <yocto@yoctoproject.org>; Wed, 24 May 2017 13:12:24 -0700 (PDT)
Received: (qmail 22850 invoked by uid 1003); 24 May 2017 20:12:24 -0000
Received: from unknown (HELO ?192.168.11.142?)
	(philip@opensdr.com@71.171.10.190)
	by mail.geekisp.com with (DHE-RSA-AES128-SHA encrypted) SMTP;
	24 May 2017 20:12:23 -0000
To: Romain Perier <romain.perier@collabora.com>,
	Trevor Woerner <twoerner@gmail.com>
References: <20170522151716.4792-1-romain.perier@collabora.com>
	<CAHUNapT-bEsYjEd_2HeMUj3th8J2Hupho7TLHROzkHe9D0CVRA@mail.gmail.com>
	<1d897931-c8fd-756a-0c09-d45647647801@collabora.com>
	<CAHUNapTmGJPOpFJjXuH718kp40iUB1GCt07ri25OgSnULN9C6A@mail.gmail.com>
	<b5ff4065-bb87-7aa7-7928-bb48d52ebb62@collabora.com>
From: Philip Balister <philip@balister.org>
Message-ID: <2d052d0a-b9fc-f9a5-e93d-66f5046c7ee9@balister.org>
Date: Wed, 24 May 2017 16:12:23 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <b5ff4065-bb87-7aa7-7928-bb48d52ebb62@collabora.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-rockchip][PATCH 0/3] u-boot: mainline
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
X-List-Received-Date: Wed, 24 May 2017 20:12:32 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

On 05/24/2017 11:05 AM, Romain Perier wrote:
> Hello,
> 
> 
> Le 24/05/2017 à 16:55, Trevor Woerner a écrit :
>> On Wed, May 24, 2017 at 10:46 AM, Romain Perier
>> <romain.perier@collabora.com> wrote:
>>> Le 22/05/2017 à 18:08, Trevor Woerner a écrit :
>>>> u-boot 2017.05 was released May 10. Wouldn't it be better to update
>>>> oe-core's u-boot to 2017.05 then just add any differences in
>>>> meta-rockchip?
>>> Good idea yes. I will bump u-boot-common_${PV} and u-boot_2017.01 to
>>> v2017.05 in poky (and then propose changes in meta-rockchip)
>> Changes to u-boot should be sent to openembedded-core; poky gets
>> updated from there (not vice versa).
> Even, if I Cc: the ML oe-core and yocto ? (so I have to do the changes
> in oe-core directly, I mean the repo. right ?)

I'd check with Marex the u-boot maintainer also. He may have something
queued up. It is entirely possible he isn't on this list.

Also, one factor will be timing of u-boot releases versus the next YP
release. That will determine final version.

Philip

> 
> Regards,
> Romain
> 

