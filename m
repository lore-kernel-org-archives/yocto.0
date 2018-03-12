Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7FE0FE0084D; Mon, 12 Mar 2018 14:44:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90163E0084D
	for <yocto@yoctoproject.org>; Mon, 12 Mar 2018 14:44:45 -0700 (PDT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-3) with ESMTPSA id
	w2CLhpVZ000748
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NOT); Mon, 12 Mar 2018 21:43:54 GMT
Message-ID: <1520891030.10851.208.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Oleg K Dzhimiev <oleg@elphel.com>, yocto@yoctoproject.org
Date: Mon, 12 Mar 2018 14:43:50 -0700
In-Reply-To: <CALFEMKmVLBwir9WGcdye6HnHBDUCV-eqS6izJHmeOemUx6zOEw@mail.gmail.com>
References: <CALFEMKmVLBwir9WGcdye6HnHBDUCV-eqS6izJHmeOemUx6zOEw@mail.gmail.com>
X-Mailer: Evolution 3.18.5.2-0ubuntu3.2 
Mime-Version: 1.0
X-Virus-Scanned: clamav-milter 0.99.3 at dan
X-Virus-Status: Clean
Subject: Re: extending HOSTTOOLS
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
X-List-Received-Date: Mon, 12 Mar 2018 21:44:47 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2018-03-09 at 11:12 -0700, Oleg K Dzhimiev wrote:
> Poky 2.4.
> I would like to add ping and scp to HOSTTOOLS from a class inherited
> by a recipe. HOSTTOOLS is updated but the links will not appear in
> the build/tmp/hosttools/
> Is there any way to do this?

HOSTTOOLS is a global configuration option, its not per-recipe. You
therefore need to set it in the core distro config, not in a recipe.

Cheers,

Richard

