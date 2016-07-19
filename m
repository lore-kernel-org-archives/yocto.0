Return-Path: <philip@balister.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CD1FBE00C5B; Tue, 19 Jul 2016 14:15:52 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 3A287E00C46
	for <yocto@yoctoproject.org>; Tue, 19 Jul 2016 14:15:49 -0700 (PDT)
Received: (qmail 11246 invoked by uid 1003); 19 Jul 2016 21:15:49 -0000
Received: from unknown (HELO ?10.201.9.71?) (philip@opensdr.com@207.197.65.34)
	by mail.geekisp.com with (DHE-RSA-AES128-SHA encrypted) SMTP;
	19 Jul 2016 21:15:49 -0000
To: Yile Ku <stiffstone@gmail.com>, yocto@yoctoproject.org
References: <CAAGP=A-UHjPdFrNQrErEJcaogH2UQdaey=79tk9XL8EJgONitw@mail.gmail.com>
From: Philip Balister <philip@balister.org>
Message-ID: <374f0429-4dea-6e3c-3962-d67e7522a2ac@balister.org>
Date: Tue, 19 Jul 2016 14:15:47 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.1.1
MIME-Version: 1.0
In-Reply-To: <CAAGP=A-UHjPdFrNQrErEJcaogH2UQdaey=79tk9XL8EJgONitw@mail.gmail.com>
Subject: Re: NOTE: Not creating empty RPM package for libvolk
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
X-List-Received-Date: Tue, 19 Jul 2016 21:15:52 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

There is a problem with volk on ppc64.

I'm the primary contact for meta-sdr, and this list is not the right
place for this conversation.

Also, looking at this suggests you are using an old version of meta-sdr.

Philip

On 07/18/2016 06:55 AM, Yile Ku wrote:
> I am getting this error when building for PowerPC 64.
> 
> 
> The file:
> meta-sdr/recipes-core/gnuradio/gnuradio_git.bb
> 
> says to include the libraries
> FILES_libvolk = "${libdir}/libvolk.so*"
> FILES_libvolk-dbg = "${libdir}/.debug/libvolk.so*"
> 
> when I look for the libraries it shows:
> build-v2$ find . -name "libvolk*.so*" -print
> ./tmp/work/ppc64e6500-fsl-linux/gnuradio/3.7.5-r0/build/volk/lib/libvolk.so.0.0.0
> ./tmp/work/ppc64e6500-fsl-linux/gnuradio/3.7.5-r0/build/volk/lib/libvolk.so
> ./tmp/work/ppc64e6500-fsl-linux/gnuradio/3.7.5-r0/package/usr/lib/.debug/libvolk.so.0.0.0
> ./tmp/work/ppc64e6500-fsl-linux/gnuradio/3.7.5-r0/package/usr/lib/libvolk.so.0.0.0
> ./tmp/work/ppc64e6500-fsl-linux/gnuradio/3.7.5-r0/package/usr/lib/libvolk.so
> ./tmp/work/ppc64e6500-fsl-linux/gnuradio/3.7.5-r0/image/usr/lib/libvolk.so.0.0.0
> ./tmp/work/ppc64e6500-fsl-linux/gnuradio/3.7.5-r0/image/usr/lib/libvolk.so
> 
> 
> Are the files not being copied to the right place?
> 
> Thanks,
> Y-
> 
> 
> 

