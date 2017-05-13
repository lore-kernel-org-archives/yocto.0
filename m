Return-Path: <romain.perier@collabora.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47041E00973; Sat, 13 May 2017 09:10:04 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5E2FE007DD
	for <yocto@yoctoproject.org>; Sat, 13 May 2017 09:10:02 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: rperier) with ESMTPSA id 3141F260687
To: yocto@yoctoproject.org
References: <1492013128-5920-1-git-send-email-ayaka@soulik.info>
From: Romain Perier <romain.perier@collabora.com>
Message-ID: <0684defa-7ea8-c0e8-7533-91c1b9f0b2be@collabora.com>
Date: Sat, 13 May 2017 18:09:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <1492013128-5920-1-git-send-email-ayaka@soulik.info>
Subject: Re: [meta-rockchip] [PATCH v2 0/3] Add video codec recipes
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
X-List-Received-Date: Sat, 13 May 2017 16:10:04 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit

Hello,


Android video codec driver ? could you be more precise ? yocto/poky is
linux-based, we don't want

stuffs for android...


Trevor: what do you think about integrating this ?


ayaka:  Please Use a real name in the author of each commit and
signed-off-by your commits with You real name.


Thanks,

Romain


Le 12/04/2017 à 18:05, ayaka a écrit :
> Those packages are the userspace libraries for the Rockchip
> Android video codec driver.
>
> Also a minimal image used for verified the media framework is included.
>
> ayaka (3):
>   recipes-multimedia: add Rockchip MPP library
>   recipes-multimedia: add gstreamer rockchip support
>   recipes-multimedia: images: rockchip media image
>
>  .../gstreamer/gstreamer1.0-rockchip.inc            | 40 ++++++++++++++++++++++
>  .../gstreamer/gstreamer1.0-rockchip_20170412.bb    |  9 +++++
>  .../gstreamer/gstreamer1.0-rockchip_git.bb         | 13 +++++++
>  recipes-multimedia/images/rockchip-media-image.bb  | 21 ++++++++++++
>  recipes-multimedia/rockchip-mpp/rockchip-mpp.inc   | 21 ++++++++++++
>  .../rockchip-mpp/rockchip-mpp_20170412.bb          |  9 +++++
>  .../rockchip-mpp/rockchip-mpp_git.bb               | 16 +++++++++
>  7 files changed, 129 insertions(+)
>  create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-rockchip.inc
>  create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-rockchip_20170412.bb
>  create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-rockchip_git.bb
>  create mode 100644 recipes-multimedia/images/rockchip-media-image.bb
>  create mode 100644 recipes-multimedia/rockchip-mpp/rockchip-mpp.inc
>  create mode 100644 recipes-multimedia/rockchip-mpp/rockchip-mpp_20170412.bb
>  create mode 100644 recipes-multimedia/rockchip-mpp/rockchip-mpp_git.bb
>


