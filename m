Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C0B5CE00C04; Tue,  8 Sep 2015 05:23:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B685E00AF0
	for <yocto@yoctoproject.org>; Tue,  8 Sep 2015 05:23:03 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 896F0F811DD; Tue,  8 Sep 2015 06:23:01 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 834C0F811DD;
	Tue,  8 Sep 2015 06:23:01 -0600 (MDT)
To: yocto@yoctoproject.org
References: <CALLyC8S3eegCzqCiZk3+e0H2fdrLoJZbxkG6=jis7E45L4DMvQ@mail.gmail.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <55EED365.3020809@mlbassoc.com>
Date: Tue, 8 Sep 2015 06:24:05 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <CALLyC8S3eegCzqCiZk3+e0H2fdrLoJZbxkG6=jis7E45L4DMvQ@mail.gmail.com>
Subject: Re: do_unpack task getting failed when tar files are added to download directory manually
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
X-List-Received-Date: Tue, 08 Sep 2015 12:23:03 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-09-08 06:10, Vivek Per wrote:
> Hi,
> I want to build vlan_1.9.bb <http://vlan_1.9.bb> (open-embedded recipe) in my system . I downloaded vlan_1.9.orig.tar.gz tarball manually (same version specified in recipe) and
> placed in download (DL_DIR) directory and created an empty vlan_1.9.orig.tar.gz.done in download directory and try to *bitbake vlan*. It is giving error while do_unpack task and
> vlan_1.9.orig.tar.gz.lock file is getting created in download directory(DL_DIR). I can able to build other yocto recipes normally like this but i am facing problem with
> open-embedded recipes only .I have added open-embedded path in bblayers.conf file. Can any one please tell me how can i make this file get included from download directory.

What is the exact error message you are getting?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

