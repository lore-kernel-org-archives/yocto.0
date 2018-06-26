Return-Path: <Konrad.Scherer@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F0479E01451; Tue, 26 Jun 2018 10:42:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8FB8BE01463
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2018 10:41:32 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w5QHfV3X020996
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2018 10:41:31 -0700 (PDT)
Received: from localhost.localdomain (128.224.22.156) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.399.0; Tue, 26 Jun 2018 10:41:31 -0700
From: Konrad Scherer <konrad.scherer@windriver.com>
To: <yocto@yoctoproject.org>
Date: Tue, 26 Jun 2018 13:41:29 -0400
Message-ID: <20180626174130.21617-1-konrad.scherer@windriver.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Subject: [layerindex-web] [PATCH 0/6] Dockerfile updates
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
X-List-Received-Date: Tue, 26 Jun 2018 17:42:06 -0000
Content-Type: text/plain

I have been using this docker image internally to test rebases. It
matches our internal production layerindex instance fairly closely.

The following changes since commit 5cfdfdca8b9200b5a6e4aa14661b14059a799310:

  rrs_upstream_history.py: fix set_regexes function (2018-06-06 11:25:46 +1200)

are available in the Git repository at:

  https://github.com/WindRiver-OpenSourceLabs/layerindex-web.git 8e32fd6d253c1f0d1a0a585ac9dd086b804142a3

for you to fetch changes up to 8e32fd6d253c1f0d1a0a585ac9dd086b804142a3:

  Add docker-compose file to create full layerindex stack of MariaDB, RabbitMQ and Nginx (2018-06-21 10:40:02 -0400)

----------------------------------------------------------------
Konrad Scherer (1):
      Add docker-compose file to create full layerindex stack of MariaDB, RabbitMQ and Nginx

 Dockerfile                 |  78 +++++++++++++++++++++-----------
 docker/README              |  56 ++++++++++++-----------
 docker/docker-compose.yaml | 111 ++++++++++++++++++++++++++++++++++++++++++++++
 docker/entrypoint.sh       |  32 ++++++++++++++
 docker/mariadb_settings.py | 246 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 5 files changed, 470 insertions(+), 53 deletions(-)
 create mode 100644 docker/docker-compose.yaml
 create mode 100755 docker/entrypoint.sh
 create mode 100644 docker/mariadb_settings.py

