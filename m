Return-Path: <fabien.lahoudere@collabora.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9C2AE00887; Thu,  6 Apr 2017 07:13:49 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C11FE007BA
	for <yocto@yoctoproject.org>; Thu,  6 Apr 2017 07:13:47 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: aragua) with ESMTPSA id AABF52656D7
Message-ID: <1491488022.25991.55.camel@collabora.co.uk>
From: Fabien Lahoudere <fabien.lahoudere@collabora.co.uk>
To: yocto@yoctoproject.org
Date: Thu, 06 Apr 2017 16:13:42 +0200
In-Reply-To: <VI1PR05MB337622D59EAB12A6C3D0C045F90A0@VI1PR05MB3376.eurprd05.prod.outlook.com>
References: <VI1PR05MB33768D6A8AB4303963AD7074F9080@VI1PR05MB3376.eurprd05.prod.outlook.com>
	<VI1PR05MB337622D59EAB12A6C3D0C045F90A0@VI1PR05MB3376.eurprd05.prod.outlook.com>
X-Mailer: Evolution 3.22.5-1 
Mime-Version: 1.0
Subject: Re: Returning non-zero exit code
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
X-List-Received-Date: Thu, 06 Apr 2017 14:13:50 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Wed, 2017-04-05 at 15:05 +0000, Natalia Theologou wrote:
> Hello, 
> 
> While I am trying to bitbake fsl-image-x11 I am having this error:
> 
> ERROR: Task 1570 (virtual:native:~/sources/poky/meta/recipes-support/gmp/gmp_5.1.1.bb, do_compile)
> failed with exit code '1'
> NOTE: Tasks Summary: Attempted 78 tasks of which 74 didn't need to be rerun and 2 failed.
> Waiting for 0 running tasks to finish:
> 
> Summary: 2 tasks failed:
>   virtual:native:~/sources/poky/meta/recipes-core/ncurses/ncurses_5.9.bb, do_compile
>   virtual:native:~/sources/poky/meta/recipes-support/gmp/gmp_5.1.1.bb, do_compile
> 
> Does anyone know how to solve it?

Can you give logs of do_compile for both recipe?

> 
> Thank you in advance, 
> Natalia Theologou

