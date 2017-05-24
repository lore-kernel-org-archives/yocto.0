Return-Path: <romain.perier@collabora.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC899E00B67; Wed, 24 May 2017 08:05:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS,UNPARSEABLE_RELAY autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.235.227.227 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06A38E00B27
	for <yocto@yoctoproject.org>; Wed, 24 May 2017 08:05:45 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: rperier) with ESMTPSA id B07832655A5
To: Trevor Woerner <twoerner@gmail.com>
References: <20170522151716.4792-1-romain.perier@collabora.com>
	<CAHUNapT-bEsYjEd_2HeMUj3th8J2Hupho7TLHROzkHe9D0CVRA@mail.gmail.com>
	<1d897931-c8fd-756a-0c09-d45647647801@collabora.com>
	<CAHUNapTmGJPOpFJjXuH718kp40iUB1GCt07ri25OgSnULN9C6A@mail.gmail.com>
From: Romain Perier <romain.perier@collabora.com>
Message-ID: <b5ff4065-bb87-7aa7-7928-bb48d52ebb62@collabora.com>
Date: Wed, 24 May 2017 17:05:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <CAHUNapTmGJPOpFJjXuH718kp40iUB1GCt07ri25OgSnULN9C6A@mail.gmail.com>
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
X-List-Received-Date: Wed, 24 May 2017 15:05:46 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Hello,


Le 24/05/2017 à 16:55, Trevor Woerner a écrit :
> On Wed, May 24, 2017 at 10:46 AM, Romain Perier
> <romain.perier@collabora.com> wrote:
>> Le 22/05/2017 à 18:08, Trevor Woerner a écrit :
>>> u-boot 2017.05 was released May 10. Wouldn't it be better to update
>>> oe-core's u-boot to 2017.05 then just add any differences in
>>> meta-rockchip?
>> Good idea yes. I will bump u-boot-common_${PV} and u-boot_2017.01 to
>> v2017.05 in poky (and then propose changes in meta-rockchip)
> Changes to u-boot should be sent to openembedded-core; poky gets
> updated from there (not vice versa).
Even, if I Cc: the ML oe-core and yocto ? (so I have to do the changes
in oe-core directly, I mean the repo. right ?)

Regards,
Romain

