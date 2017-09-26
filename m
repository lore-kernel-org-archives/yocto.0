Return-Path: <Shrawan.Kumar@harman.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 55EFCE00D11; Tue, 26 Sep 2017 05:06:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS,
	T_FILL_THIS_FORM_SHORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.82.251.14 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
	*      information
Received: from mail1.bemta12.messagelabs.com (mail1.bemta12.messagelabs.com
	[216.82.251.14])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E894E00C8F
	for <yocto@yoctoproject.org>; Tue, 26 Sep 2017 05:06:40 -0700 (PDT)
Received: from [216.82.251.35] by server-14.bemta-12.messagelabs.com id
	40/0D-01781-FC24AC95; Tue, 26 Sep 2017 12:06:39 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrHKsWRWlGSWpSXmKPExsVySpdNU/e806l
	Ig/9f1S1OLNvBZjHp5Ro2ByaP+S8esHm0n+hjC2CKYs3MS8qvSGDNmL1mKkvBHZmKzzPOMjUw
	TpboYuTiEBLYyijxsncBK4SzhVHi06u9UM5BRomfG1czdjFycrAJGEpc6bkLZosIREv07HnFB
	mILC9hKPD20ihkibidxeM5SdgjbSGLZgXusIDaLgKrEyRtnwWxeAXeJLxees4DYQgLVEkumfA
	GLcwrYS2w/0coEYjMKyEp8aVwNNpNZQFzi1pP5YHEJAQGJJXvOM0PYohIvH/9jhbANJLYu3cc
	CYStIrOxuYIOwrSX2z1vKCjFHT+LG1ClsELa2xLKFr5kh7hGUODnzCdQ9qhJbFv5mmcAoPgvJ
	6llI2mchaZ+FpH0BI8sqRo3i1KKy1CJdYwu9pKLM9IyS3MTMHF1DQyO93NTi4sT01JzEpGK95
	PzcTYzAuKtnYGDcwfhif/QhRkkOJiVRXkW5U5FCfEn5KZUZicUZ8UWlOanFhxhlODiUJHifOQ
	LlBItS01Mr0jJzgAkAJi3BwaMkwlsLkuYtLkjMLc5Mh0idYtTluHXr7h8mIZa8/LxUKXHefSB
	FAiBFGaV5cCNgyegSo6yUMC8jAwODEE9BalFuZgmq/CtGcQ5GJWHecyBTeDLzSuA2vQI6ggno
	iN6pJ0COKElESEk1MPKbv+h5P/GCku6Zr9+M287+sRJNYZlclnpO68+WMzc3zv3M4XauKvHSY
	z6/WSx7fHtqw7tsvu69bVmQvfTTn/eSk202vfl7brdha7DwgUtRc51vVvHMucevNePa6oL7m7
	a25hpKh9zd/uomVyHXq69VlQ+m9m3xLrGr0GCY2rHgXWvtyYRI30AlluKMREMt5qLiRAAgeOT
	wQQMAAA==
X-Env-Sender: Shrawan.Kumar@harman.com
X-Msg-Ref: server-6.tower-151.messagelabs.com!1506427596!110290262!1
X-Originating-IP: [202.45.6.41]
X-StarScan-Received: 
X-StarScan-Version: 9.4.45; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 6209 invoked from network); 26 Sep 2017 12:06:39 -0000
Received: from unknown (HELO HIBDWSMB09.ad.harman.com) (202.45.6.41)
	by server-6.tower-151.messagelabs.com with DHE-RSA-AES256-GCM-SHA384
	encrypted SMTP; 26 Sep 2017 12:06:39 -0000
Received: from HIBDWSMB04.ad.harman.com (10.99.236.94) by
	HIBDWSMB09.ad.harman.com (10.99.236.103) with Microsoft SMTP Server
	(TLS) id 15.0.1263.5; Tue, 26 Sep 2017 17:36:31 +0530
Received: from HIBDWSMB02.ad.harman.com (10.99.236.92) by
	HIBDWSMB04.ad.harman.com (10.99.236.94) with Microsoft SMTP Server
	(TLS) id 15.0.1263.5; Tue, 26 Sep 2017 17:36:28 +0530
Received: from HIBDWSMB02.ad.harman.com ([fe80::d8dd:3dec:76ff:8e7b]) by
	HIBDWSMB02.ad.harman.com ([fe80::d8dd:3dec:76ff:8e7b%16]) with mapi id
	15.00.1263.000; Tue, 26 Sep 2017 17:36:28 +0530
From: "Kumar, Shrawan" <Shrawan.Kumar@harman.com>
To: Ayoub Zaki <ayoub.zaki@embexus.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [EXTERNAL] Re: [yocto] rootfs encryption support
Thread-Index: AQHTNrTKmCIk1l2QwkewhEFlN+QTSqLHCR3A
Date: Tue, 26 Sep 2017 12:06:27 +0000
Message-ID: <01551177a97b480a8c267aefbf2c6af2@HIBDWSMB02.ad.harman.com>
References: <e1e5dcc7a72a4e02bf809951ab67f555@HIBDWSMB02.ad.harman.com>
	<24658a3e-c369-b735-fc25-97076a7ad33f@embexus.com>
In-Reply-To: <24658a3e-c369-b735-fc25-97076a7ad33f@embexus.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.99.236.43]
x-exclaimer-md-config: 4a26c407-9f7b-4db1-94e4-bcbc87a799a8
MIME-Version: 1.0
Subject: Re: [EXTERNAL] Re: rootfs encryption support
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
X-List-Received-Date: Tue, 26 Sep 2017 12:06:42 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

When I execute the cryptsetup manually (with sudo ) on the host , I could s=
ee " demomap" getting populated . This confirms that it works on  host when=
 I run manually and that HOST configuration is OK .=20
However this is not happing under yocto fakeroot environment and it says " =
Cannot initialize device-mapper. Is dm_mod kernel module loaded?*"

@:~$ ls -l /dev/mapper/
total 0
crw------- 1 root root 10, 236 Sep 15 02:26 control
lrwxrwxrwx 1 root root       7 Sep 26 11:56 demomap -> ../dm-7
lrwxrwxrwx 1 root root       7 Sep 15 02:26 vg00-lv2swap -> ../dm-6
lrwxrwxrwx 1 root root       7 Sep 15 02:26 vg00-lvdocker -> ../dm-1
lrwxrwxrwx 1 root root       7 Sep 15 02:26 vg00-lvhome -> ../dm-3
lrwxrwxrwx 1 root root       7 Sep 15 02:26 vg00-lvroot -> ../dm-2
lrwxrwxrwx 1 root root       7 Sep 15 02:26 vg00-lvswap -> ../dm-5
lrwxrwxrwx 1 root root       7 Sep 15 02:26 vg00-lvvar -> ../dm-4
lrwxrwxrwx 1 root root       7 Sep 15 02:26 vgdata-lvdata -> ../dm-0


off course , dm_mod which I could confirm with emty output of  lsmod | grep=
 dm_mod
But then how does it works on host when I run cryptsetup manually ?

I could see " dm_crypt" module is loaded .=20

-----Original Message-----
From: Ayoub Zaki [mailto:ayoub.zaki@embexus.com]=20
Sent: Tuesday, September 26, 2017 4:17 PM
To: Kumar, Shrawan <Shrawan.Kumar@harman.com>
Subject: [EXTERNAL] Re: [yocto] rootfs encryption support



On 26.09.2017 12:29, Kumar, Shrawan wrote:
> To add further information to the query , I am executing =A0"cryptsetup"=
=20
> =A0from a recipe as below : (/Yocto 2.0.2)/
>
> fakeroot do_install() {
>
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 cryptsetup --type=3Dplain open=
 hello.enc demomap <=20
> dm-crypt-key
>
> }
>
> Additional debug log :
>
> + do_install
>
> | + cryptsetup --type=3Dplain open
> /path_to/tmp/work/cortexa9hf-vfp-neon-elina-linux-gnueabi/DM-CryptSetu
> p/1.0-r0/hello.enc
> demomap
>
> | *Cannot initialize device-mapper. Is dm_mod kernel module loaded?*
>
> |
>
> | Cannot initialize device-mapper. Is dm_mod kernel module loaded?
>
> | + bb_exit_handler
>
*||**Your Host kernel need to have support for DM-Crypt enabled, you can au=
toload the corresponding kernel module by adding to your build host modules=
 configuration:

$ sudo sh -c 'echo dm_mod > /etc/modules-load.d/dm_mod.conf'*
||
**
>
> Ideally , I was under impression that "fakeroot" shall have allowed to=20
> me achieve the goal.
>
> Thanks & Regads
>
> Shrawan
>
> *From:* Kumar, Shrawan
> *Sent:* Tuesday, September 26, 2017 10:56 AM
> *To:* 'yocto@yoctoproject.org' <yocto@yoctoproject.org>
> *Subject:* rootfs encryption support
>
> Hello Team ,
>
> Is it possible to get encrypted rootfs during image build =A0?
>
> Currently , I am running "*cryptsetup*" (as sudo) *manually* =A0=A0after=
=20
> the final image(rootfs.ext4) is produced =A0. The idea is to get this=20
> done within yocto environment without sudo problem .
>
> Thanks and Regards
>
> Shrawan
>
>
>

--
Ayoub Zaki
Embedded Systems Consultant

Vaihinger Stra=DFe 2/1
D-71634 Ludwigsburg

Tel.     : +4971415074546
Mobile   : +4917662901545
Email    : ayoub.zaki@embexus.com
Homepage : https://clicktime.symantec.com/a/1/8fQ575pM7qUybRZBFjM9C7WPhR2dX=
T1R4k3d_4A9BOc=3D?d=3DTm5cGpFBEW_vK6_eBrh-lyBQV_R1miTaoqmkTnsHhnTjNs9fOY92c=
q9wfN5CbL76p9_yEC-LnqRTAKlF1fzjPCBupycsjT3GP6G75yD1UVlxZ7c2mqLgkyrhClC1V-74=
zP2Zbhs8BAnSEhpjJoqPP_0JU1Lzuo-iK8U_D7B1zQes8b4JBgf3DPo21HUsMa2qEGMbeqEDq7L=
U4y2SXKadgb1xcCNmOTvQIJ9LchpVyTITF0Qw2c5M1--o9oWn7FlThc-KBs5TLfBKAIexE3ndzK=
ZOdu9D2NlCmcrEM7q1Oe8sarufZ71B8FsfvU5lT_9gB-hfFD0PEgEJY8VxBGtY4-tLfyAnaY8Z-=
BlIlSDBgZeorcaKkAzCj4nQTbXIWTTIYg%3D%3D&u=3Dhttps%3A%2F%2Fembexus.com


