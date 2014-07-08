Return-Path: <Maxin.John@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 80D56E00576; Tue,  8 Jul 2014 03:59:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id E49C6E004FF
	for <yocto@yoctoproject.org>; Tue,  8 Jul 2014 03:59:14 -0700 (PDT)
Received: from sestofb10.enea.se (172.21.3.145) by smtp.enea.com
	(172.21.1.209) with Microsoft SMTP Server id 14.3.158.1; Tue, 8 Jul 2014
	12:59:08 +0200
Received: by sestofb10.enea.se (Postfix, from userid 4454)	id 22433288F30;
	Tue,  8 Jul 2014 12:59:08 +0200 (CEST)
Date: Tue, 8 Jul 2014 12:59:08 +0200
From: "Maxin B. John" <maxin.john@enea.com>
To: atulkumar singh <atul.singh008@gmail.com>
Message-ID: <20140708105908.GA1949@sestofb10.enea.se>
References: <CAH21_vFKzJAR8GRArhZoKfOQzSpHkogfX+d+j_MML9v4AYD1+A@mail.gmail.com>
	<20140707195511.GA50424@sestofb10.enea.se>
	<CAH21_vGLnGXFs2fkVO8D2LwUPJ5k0iJtCsSKsPujWtsijXnqkg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAH21_vGLnGXFs2fkVO8D2LwUPJ5k0iJtCsSKsPujWtsijXnqkg@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Received-SPF: None (SESTOEX03.enea.se: maxin.john@enea.com does not
	designate permitted sender hosts)
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Tue, 08 Jul 2014 10:59:24 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline

Hi Atul,

On Tue, Jul 08, 2014 at 03:57:44PM +0530, atulkumar singh wrote:
> Hi Maxin,
> 
> Thanks for your suggestion for the same.
> But that git repository for meta-aarch64 is not working.

"It works for me" ..

# git clone git://git.linaro.org/openembedded/meta-linaro.git

> Thanks and regards
> Atul

Best Regards,
Maxin
 
> On 8 Jul 2014 01:25, "Maxin B. John" <maxin.john@enea.com> wrote:
> 
>     Hi Atul,
> 
>     On Tue, Jul 08, 2014 at 12:41:22AM +0530, atulkumar singh wrote:
>     > Hi All,
>     >
>     > Is there support for Aarch64(64 bit ARMv8) available right now?
>     Yes. Aarch64 support is available in meta-linaro/meta-aarch64
>     URL: http://git.linaro.org/?p=openembedded/meta-linaro.git
> 
>     > If so then what i need to mention as a MACHINE in local.conf.
>     You can choose between:
>     1. genericarmv8b - generic armv8 big endian machine
>     2. genericarmv8 - generic armv8 machine
> 
>     > Please let me know with your valuable suggestion if any.
>     Please use http://layers.openembedded.org/
>     to search Machine/Layers/Recipes supported by OpenEmbedded.
> 
>     > Thanks and regards,
>     > Atul
> 
>     Best Regards,
>     Maxin
> 
> 

