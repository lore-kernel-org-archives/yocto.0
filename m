Return-Path: <ayoub.zaki@embexus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AE89BE00D11; Tue, 26 Sep 2017 03:48:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.30.212.2 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mailrelay3-2.pub.mailoutpod1-cph3.one.com
	(mailrelay3-2.pub.mailoutpod1-cph3.one.com [46.30.212.2])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5FB53E00C8F
	for <yocto@yoctoproject.org>; Tue, 26 Sep 2017 03:48:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=embexus.com; s=20140924;
	h=from:subject:date:message-id:to:mime-version:content-type:
	content-transfer-encoding:in-reply-to:references;
	bh=7vVJIk8BAuhKwNMNd7zk5WdgCrvwL6FOT84rw40nrYg=;
	b=QeBkU+ufBzW9HYmgs9AZsBVjrvauol48oPwoxd0A7StcQd8Ir8jhN6ivhOsuUsDHh/WH/QPqCD5LV
	N4qBXP+GAI5wToWmiZqoLrkrstWiX7JSAbj7SzqzBb+BaMPg5BcpUKIGUtfSa/LnHW30Aic+1iPbdY
	L6K7B8IpweTCiv3g=
X-HalOne-Cookie: fb5ed107acc3ba37a636897030f2bac2ece1fc81
X-HalOne-ID: 39d8dbe2-a2a8-11e7-9212-b82a72d06996
Received: from [192.168.1.68] (unknown [145.236.74.125])
	by smtpfilter3.public.one.com (Halon) with ESMTPSA
	id 39d8dbe2-a2a8-11e7-9212-b82a72d06996;
	Tue, 26 Sep 2017 10:48:26 +0000 (UTC)
To: yocto@yoctoproject.org
References: <e1e5dcc7a72a4e02bf809951ab67f555@HIBDWSMB02.ad.harman.com>
From: Ayoub Zaki <ayoub.zaki@embexus.com>
Message-ID: <7e085ba8-c9d0-f8df-b977-c667d4dbe709@embexus.com>
Date: Tue, 26 Sep 2017 12:48:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <e1e5dcc7a72a4e02bf809951ab67f555@HIBDWSMB02.ad.harman.com>
Subject: Re: rootfs encryption support
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
X-List-Received-Date: Tue, 26 Sep 2017 10:48:30 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Hi,

On 26.09.2017 12:29, Kumar, Shrawan wrote:
> To add further information to the query , I am executing  “cryptsetup” 
>  from a recipe as below : (/Yocto 2.0.2)/
>
> fakeroot do_install() {
>
>                cryptsetup --type=plain open hello.enc demomap < 
> dm-crypt-key
>
> }
>
> Additional debug log :
>
> + do_install
>
> | + cryptsetup --type=plain open 
> /path_to/tmp/work/cortexa9hf-vfp-neon-elina-linux-gnueabi/DM-CryptSetup/1.0-r0/hello.enc 
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
Your Host kernel need to have support for DM-Crypt enabled, you can 
autoload the corresponding kernel module by adding to your build host 
modules configuration:

$ sudo sh -c 'echo dm_mod > /etc/modules-load.d/dm_mod.conf'

>
> Ideally , I was under impression that “fakeroot” shall have allowed to 
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
> Is it possible to get encrypted rootfs during image build  ?
>
> Currently , I am running “*cryptsetup*” (as sudo) *manually*   after 
> the final image(rootfs.ext4) is produced  . The idea is to get this 
> done within yocto environment without sudo problem .
>
> Thanks and Regards
>
> Shrawan
>
>
>

