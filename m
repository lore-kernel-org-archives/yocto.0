Return-Path: <Konrad.Scherer@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2F07EE004F6; Wed, 11 Jul 2018 10:03:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=unavailable version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B173E0044F;
	Wed, 11 Jul 2018 10:03:31 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id w6BH3Uc7005171
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 11 Jul 2018 10:03:30 -0700 (PDT)
Received: from [128.224.56.211] (128.224.56.211) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.399.0;
	Wed, 11 Jul 2018 10:03:29 -0700
To: Paul Eggleton <paul.eggleton@linux.intel.com>, <yocto@yoctoproject.org>
References: <2274431.fXWzuTuIFg@localhost.localdomain>
From: Konrad Scherer <Konrad.Scherer@windriver.com>
Message-ID: <7454b0f6-57c6-5304-0108-caa804494e57@windriver.com>
Date: Wed, 11 Jul 2018 13:03:28 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.8.0
MIME-Version: 1.0
In-Reply-To: <2274431.fXWzuTuIFg@localhost.localdomain>
X-Originating-IP: [128.224.56.211]
Subject: Re: [layerindex-web] RFC: layer index docker fixes
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
X-List-Received-Date: Wed, 11 Jul 2018 17:03:32 -0000
X-Groupsio-MsgNum: 41753
Content-Type: multipart/mixed; boundary="------------576142D2FF5DC0C5593BF02B"
Content-Language: en-US

--------------576142D2FF5DC0C5593BF02B
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 07/10/2018 12:17 PM, Paul Eggleton wrote:
> Hi folks
> 
> I've been trying to get the OE layer index example docker setup in shape,
> based upon improvements from myself, Michael and Konrad. For the moment I've
> taken most of what Michael and I did (with some fixes and tweaks, and broken up
> into smaller patches) and a few pieces of the Dockerfile from Konrad's recent
> patch and put it here:
> 
>    http://git.yoctoproject.org/cgit/cgit.cgi/layerindex-web/log/?h=paule/dockerfixes
> 
> Konrad, I know you were a little bit more ambitious with your changes but I
> wanted to get something closer to what Michael is using and then we can build
> upon it. In particular I haven't yet explored docker-compose as you have,
> although it looks like it would make deploying all of this a bit easier.
> 
> Let me know what you think.

Hello Paul,

I have attached a patch to reduce the layerindex-web image size further. 
Docker image layers are like git objects and RUN commands can only hide 
files, not remove them once they have been committed. The pip upgrade 
caused the following 'pip install' to fail and was removed.

I recommend docker-compose because much of the information in 
docker/README can be captured in a compose yaml file. It handles the 
network setup and makes managing shared volumes much simpler.

-- 
Konrad Scherer, MTS, Linux Products Group, Wind River

--------------576142D2FF5DC0C5593BF02B
Content-Type: text/x-diff;
	name="0001-Dockerfile-Reduce-image-size-by-merging-RUN-stages-t.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename*0="0001-Dockerfile-Reduce-image-size-by-merging-RUN-stages-t.pa";
	filename*1="tch"

From 22274ea8298b4cb0c8ea3e545367a9c2c4c379c4 Mon Sep 17 00:00:00 2001
From: Konrad Scherer <Konrad.Scherer@windriver.com>
Date: Wed, 11 Jul 2018 12:19:15 -0400
Subject: [PATCH] Dockerfile: Reduce image size by merging RUN stages together

Docker commits changes after each RUN stage and commands that delete
files must part of the sane RUN command to actually reduce image size.

Debian stretch contains pip 9.0.3 and the upgrade to 10 caused pip
install to fail.

Signed-off-by: Konrad Scherer <Konrad.Scherer@windriver.com>
---
 Dockerfile | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/Dockerfile b/Dockerfile
index 523280d..0aff2ec 100644
--- a/Dockerfile
+++ b/Dockerfile
@@ -12,8 +12,8 @@ ENV PYTHONUNBUFFERED=1 \
 #ENV https_proxy https://your.proxy.server:port
 
 COPY requirements.txt /
-RUN apt-get update
-RUN apt-get install -y --no-install-recommends \
+RUN apt-get update \
+    && apt-get install -y --no-install-recommends \
 	autoconf \
 	g++ \
 	gcc \
@@ -31,20 +31,20 @@ RUN apt-get install -y --no-install-recommends \
 	locales \
 	netcat-openbsd \
 	curl \
-	vim
-RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen \
+	vim \
+    && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen \
 	&& locale-gen en_US.UTF-8 \
-	&& update-locale
-RUN pip install --upgrade pip
-RUN pip3 install gunicorn
-RUN pip install setuptools
-RUN pip3 install setuptools
-RUN pip install -r /requirements.txt
-RUN pip3 install -r /requirements.txt
-RUN apt-get purge -y autoconf g++ gcc make python3-dev libjpeg-dev libmariadbclient-dev \
+	&& update-locale \
+    && pip3 install gunicorn \
+    && pip install setuptools \
+    && pip3 install setuptools \
+    && pip install -r /requirements.txt \
+    && pip3 install -r /requirements.txt \
+    && apt-get purge -y autoconf g++ gcc make python-dev python3-dev libjpeg-dev libmariadbclient-dev \
 	&& apt-get autoremove -y \
 	&& rm -rf /var/lib/apt/lists/* \
 	&& apt-get clean
+
 COPY . /opt/layerindex
 COPY docker/settings.py /opt/layerindex/settings.py
 COPY docker/refreshlayers.sh /opt/refreshlayers.sh
-- 
2.18.0


--------------576142D2FF5DC0C5593BF02B--
