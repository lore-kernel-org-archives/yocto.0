Return-Path: <mhalstead@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 531E7E00B28; Wed, 12 Jul 2017 09:38:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.44 listed in list.dnswl.org]
Received: from mail-pg0-f44.google.com (mail-pg0-f44.google.com [74.125.83.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26C65E00ACF
	for <yocto@yoctoproject.org>; Wed, 12 Jul 2017 09:37:57 -0700 (PDT)
Received: by mail-pg0-f44.google.com with SMTP id k14so15716215pgr.0
	for <yocto@yoctoproject.org>; Wed, 12 Jul 2017 09:37:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=to:from:subject:organization:message-id:date:user-agent
	:mime-version:content-language:content-transfer-encoding;
	bh=Sm+b5ieJ06YTl757DBsXA68D69Vhl1B/74+KEm+mweU=;
	b=DcpveHJu33PsqX+Uwcz5bK81cmChaokgqnVwN+9kSvC1/kBRB7q9nlFcVP5HsEkoXh
	MAzKa2GtZXdnXeGZg8foIwU6iIVvW7vf7WGa2Wo7ed2P54acC/kmJ6Dj5NArc7Qw5Jfy
	uuYV/jI2PaynUyYa88gXR5FT+SzKGg7IGuMLc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:organization:message-id:date
	:user-agent:mime-version:content-language:content-transfer-encoding;
	bh=Sm+b5ieJ06YTl757DBsXA68D69Vhl1B/74+KEm+mweU=;
	b=cEjhzNntQSGxzVBMyO2gf7aXEXi0ReUXMO9GZAX3ojUXiYeIb1v6BcaALe8afBJrFx
	K7wYomQeh7bWFMgKf6WxAdPvfzDTlBOGySVVhnOURk/B0CLXJsrgEusDuHMoLaHjP+fW
	5DiFXlX55/6r3vMceWUtX+hep19T4cWtxSy4l9XAaVCQREtG0xZ/WtQskoEY36vI4SXa
	/t3yVe7OkrAMSvOnDayxb0X549RbgXPWaVYvLvIyT+p4sI1MsQLearZTLnpEAatrM58u
	kquVvReAwe5YmjzqpdG6+5+BA1YXGtoJqCgMrz3jJVKmT24Pgfd+/qcl5N6a+VWsgmlX
	0o2A==
X-Gm-Message-State: AIVw113r8IKvet6KYtj0zvbxvRODw8dcTqdGPcutVCxs0G8N1WlbBssD
	9mcjZceAwFYPFZvpG9Px1A==
X-Received: by 10.101.72.207 with SMTP id o15mr4787082pgs.73.1499877476383;
	Wed, 12 Jul 2017 09:37:56 -0700 (PDT)
Received: from yct-lpt.lan (50-39-170-83.bvtn.or.frontiernet.net.
	[50.39.170.83])
	by smtp.gmail.com with ESMTPSA id r27sm8113771pfe.0.2017.07.12.09.37.54
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 12 Jul 2017 09:37:55 -0700 (PDT)
To: pidge@toganlabs.com, jose.perez.carranza@intel.com,
	libertad.cruz@intel.com, otavio@ossystems.com.br, yi.zhao@windriver.com,
	tracy.graydon@intel.com, joshua.g.lock@intel.com, yocto@yoctoproject.org
From: Michael Halstead <mhalstead@linuxfoundation.org>
Organization: Linux Foundation
Message-ID: <2e55442b-959f-623b-9056-df8343acf544@linuxfoundation.org>
Date: Wed, 12 Jul 2017 09:37:54 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
Subject: Release Candidate Build for yocto-2.3.1.rc1 now available
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
X-List-Received-Date: Wed, 12 Jul 2017 16:38:01 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

A release candidate build for yocto-2.3.1.rc1 is now available at:


    https://autobuilder.yocto.io/pub/releases/yocto-2.3.1.rc1


Please begin QA on this build as soon as possible.


Build hash information:
meta-intel : 16aea09d224f3ed2021623d17c3e807f4b8ff18d
meta-qt4 : e120a2193be3982d55741fb9e51472db6ab9a5cd
refkit : d86ed372d83a930e9fe2ef22e8a4b98a269d33e6
meta-mingw : 4bdb99650a053f254ccd158a6d0c25c80e79f6ee
meta-qt3 : f33b73a9563f2dfdfd0ee37b61d65d90197a456f
meta-gplv2 : de001bd6bfcec943d274b649c62be6848cc9c3e6
poky : c2ef32ae58737463cf19aab7446d6a30ad81754f

\nThis is an automated message from\nThe Yocto Project Autobuilder\nGit:
git://git.yoctoproject.org/yocto-autobuilder\nEmail: pidge@toganlabs.com
" | sendmail -t
 in dir /home/pokybuild/yocto-autobuilder/yocto-worker/nightly/build
(timeout 100000 secs)
 watching logfiles {}
 argv: echo "To: yocto@yoctoproject.org
Cc: pidge@toganlabs.com, jose.perez.carranza@intel.com,
libertad.cruz@intel.com, otavio@ossystems.com.br, yi.zhao@windriver.com,
tracy.graydon@intel.com, joshua.g.lock@intel.com
Subject: Release Candidate Build for yocto-2.3.1.rc1 now available.


A release candidate build for yocto-2.3.1.rc1 is now available at:


    https://autobuilder.yocto.io/pub/releases/yocto-2.3.1.rc1


Please begin QA on this build as soon as possible.


Build hash information:
meta-intel : 16aea09d224f3ed2021623d17c3e807f4b8ff18d
meta-qt4 : e120a2193be3982d55741fb9e51472db6ab9a5cd
refkit : d86ed372d83a930e9fe2ef22e8a4b98a269d33e6
meta-mingw : 4bdb99650a053f254ccd158a6d0c25c80e79f6ee
meta-qt3 : f33b73a9563f2dfdfd0ee37b61d65d90197a456f
meta-gplv2 : de001bd6bfcec943d274b649c62be6848cc9c3e6
poky : c2ef32ae58737463cf19aab7446d6a30ad81754f


-- 
Michael Halstead
Linux Foundation / SysAdmin

