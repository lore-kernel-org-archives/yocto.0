Return-Path: <Maxin.John@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B65D7E00798; Tue,  8 Jul 2014 07:22:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id C4C7CE0073C
	for <yocto@yoctoproject.org>; Tue,  8 Jul 2014 07:22:19 -0700 (PDT)
Received: from sestofb10.enea.se (172.21.3.145) by smtp.enea.com
	(172.21.1.209) with Microsoft SMTP Server id 14.3.158.1; Tue, 8 Jul 2014
	16:22:17 +0200
Received: by sestofb10.enea.se (Postfix, from userid 4454)	id BC3DA288F30;
	Tue,  8 Jul 2014 16:22:17 +0200 (CEST)
Date: Tue, 8 Jul 2014 16:22:17 +0200
From: "Maxin B. John" <maxin.john@enea.com>
To: atulkumar singh <atul.singh008@gmail.com>
Message-ID: <20140708142217.GA22778@sestofb10.enea.se>
References: <CAH21_vFKzJAR8GRArhZoKfOQzSpHkogfX+d+j_MML9v4AYD1+A@mail.gmail.com>
	<20140707195511.GA50424@sestofb10.enea.se>
	<CAH21_vGLnGXFs2fkVO8D2LwUPJ5k0iJtCsSKsPujWtsijXnqkg@mail.gmail.com>
	<CAGNsrLAbo8arFWHoCi0faPobYL=upmoTHQsNHihrzQgSiY9tjw@mail.gmail.com>
	<CAH21_vEj7GAfx2XECrhg_fu-2rtEveYdThK1Ub6p5c7qCxJB_g@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAH21_vEj7GAfx2XECrhg_fu-2rtEveYdThK1Ub6p5c7qCxJB_g@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Received-SPF: None (SESTOEX03.enea.se: maxin.john@enea.com does not
	designate permitted sender hosts)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Aarch64 support
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
X-List-Received-Date: Tue, 08 Jul 2014 14:22:33 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline

Hi Atul,

On Tue, Jul 08, 2014 at 07:43:03PM +0530, atulkumar singh wrote:
> Hi Fathi and Maxin,
> 
> Thanks as you are helping me in sorting out my issue for Aarch64 support in
> meta-toolchain while building bitbake for yocto.
> And "not working" means if we go into the machine/layer/recipes link and under
> the meta-aarch64 layer the git repository link which is mention is not working.
> Please let me know with your valuable suggestion.

The "meta-aarch64" is present in "meta-linaro" repository. 
Clone meta-linaro :

# git clone git://git.linaro.org/openembedded/meta-linaro.git
# cd meta-linaro/meta-aarch64
 
> Thanks and regards,
> Atul
> 
> On 8 Jul 2014 18:14, "Fathi Boudra" <fathi.boudra@linaro.org> wrote:
> 
>     On 8 July 2014 13:27, atulkumar singh <atul.singh008@gmail.com> wrote:

Best Regards,
Maxin
<snip> 

