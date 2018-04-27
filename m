Return-Path: <mkelly@xevo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 089B9E0073D; Fri, 27 Apr 2018 14:19:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.34.67 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 3616 seconds by postgrey-1.32 at yocto-www;
	Fri, 27 Apr 2018 14:19:06 PDT
Received: from NAM01-BY2-obe.outbound.protection.outlook.com
	(mail-by2nam01on0067.outbound.protection.outlook.com [104.47.34.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1760AE0073D
	for <yocto@yoctoproject.org>; Fri, 27 Apr 2018 14:19:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-xevo-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=/JQTfHOQdr0phHhtly2dkxySFqlBj45LvnkHJp2mTtw=;
	b=LM0Q/VSEm9vZy9zraA5meRUfXklDe7bkNsdNJVuwgPm/87GABd2dqofw+iWcko8cznh4ElNXMKSPisJtyov9eI/sogOuPMtdygChHmzaWRy2ZicEbZMeGLqnkxi2UCiiVFEiqVxi6X+R8XBY73ZCg+4yoGepXHpvPwychhbnlV8=
Authentication-Results: spf=none (sender IP is )
	smtp.mailfrom=mkelly@xevo.com; 
Received: from columbia.corp.xevo.com (65.122.179.226) by
	BL0PR0102MB3410.prod.exchangelabs.com (2603:10b6:207:1a::11) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.20.696.13;
	Fri, 27 Apr 2018 17:46:57 +0000
From: Martin Kelly <mkelly@xevo.com>
To: yocto@yoctoproject.org
Date: Fri, 27 Apr 2018 10:46:42 -0700
Message-Id: <20180427174642.24184-1-mkelly@xevo.com>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
X-Originating-IP: [65.122.179.226]
X-ClientProxiedBy: MWHPR19CA0077.namprd19.prod.outlook.com
	(2603:10b6:320:1f::15) To BL0PR0102MB3410.prod.exchangelabs.com
	(2603:10b6:207:1a::11)
X-MS-PublicTrafficType: Email
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(5600026)(4534165)(4627221)(201703031133081)(201702281549075)(2017052603328)(7153060)(7193020);
	SRVR:BL0PR0102MB3410; 
X-Microsoft-Exchange-Diagnostics: 1; BL0PR0102MB3410;
	3:y32APdrGzwp36kmfa3Lmj6R5vcPwNy2nJGN8y3YGgOddTqBTsl2YV6QVhyrEFHMyw4UDXPVa0HMtfmSDKtOGesa48Q1i/ziaSsUX8Dc7z9jiQefC9XwTo7V+GxBmsP97wmnmLKuRqlDOSgzM4KWRbDdpg98nN9KxanFcum3zqUW/ohrxxRNq18jhF+tkvtpqGgex/z0lnPRMeykVgeZk7RmBmyR5/t+k7gmT5ZD4F+U6WsCxVr1OsmTnZOKA2qXX;
	25:rQYPmNa4LaJiZaGgFrtOZXcWxp8rtNv0zZdysu/1FEtABjCA7pzKMaSdqJ0byyTPxjrVuzdcnz3xxqUzN9rdBqzxKoGANRH5OiTAqAWBqEfZsliEL+ENAbU6FepqmlNAkUc/Rl+rzu5nroqiuIyYYKEput84+sII7nsWG2TCf14+3Ht9lB0gvbXHG/v8IG1WpuuJF4HnQO03aZEUew2b7WImt01zSEC3/Pzuv0iuoqavtqlPL9CFSTaax6YNOu8MXm6uPJVSgWJRbG4+Z/7TiAhRFhPoWxzIq4xJoqPtWASHjuSZF0AbC50k2rrruAqVIUYqcFtOhNHhAh+c3t3Brg==;
	31:Mh/fzN8nAxBE4q+JMNWbCTtZ+tlr12LmrJ+BYJORAA+16Vkh2yRxAC5DXjJjFckbj7IJu/Nk3HHra3wiQhV/o2eyQ1tWggy/1q9dUqcaARzI6TpqaNIGnG/MQtY2iyE9SjKpqpv15SBnJGruhyJS6zNRu1O8FjAaam5phEQNmHO2BFGTtP2Xq7GWzfdRLFUqDva2vFz4FKYfqfGneEi1ADDcZEMVF+peEzlXCpAdd+s=
X-MS-TrafficTypeDiagnostic: BL0PR0102MB3410:
X-Microsoft-Exchange-Diagnostics: 1; BL0PR0102MB3410;
	20:ncPr692dtLsb+L6bSpLTMqYvU24e+g6qP8vUjUIGH5KGc7hv6N3aORFpYmzkDi4dkizVm82iWOV0V+2obdt7+wrbcRyBmOrPK82LzKb7GKS/nRrJmSJb6mCe5csZT0dUbxNbNkqX7iJ5uQ2hzxxC0C3muwOHsLTXoBF/syvm9/heLrU4Ik1r8h/wUUHTf0kGaYQxnpavEBv5t3isyx5o/R/b66aozJ2mhKjrrXekYVKf+uJjh7NXAjXpBIas6nayv6Tex1KQ5e0aPe9gfLTts2Imk1YiYMi9skuFAA9mjHOtLsWUvalp18MpdNhN0SB+8RCxJj3CD7sF8YF69TLYzlox1kofZpv+rxlUsEV0LkrzaMZ9sUDgKUrM+WYe2hCSr69jgDW4Xd+89JnsyvK3WNoBsPbnFhXco4l44Gvg2PMdRqj1fu8oDeOMBHOQO5TpyIWQpHrKUgJCavpWAxb7x0MN6tULu/OIAyXzRutUuR0EYl2PC5uyzvtOVZL2j8cn;
	4:Y7lB9qGR20idSPaWYLskIo/8Bl4QUoCmt3aoEVu5MJRT0bsTEkpuSJb6oQJXqt9MIPiuV+4+F0344ukowohw5RQ61e9Ogby4mloskDe3ogywwTUxNRnyQMW08aLuaJ5Kyf+Cudz6Scs/9SBwKDYldjZ/zgeKpBKGqZ/WOE1pJdukVBLfQE/ABTiY+7EGxSpCXEZtf22SFmSIHi5ADwKI5qu2AwFCamNvehVxLX/+ew871QYjpu+8SfpgsrxCYZ3CWMAIlhccbDMt90BsmXw0vg==
X-Microsoft-Antispam-PRVS: <BL0PR0102MB3410E8FA3E108F4BF11DA3D1AB8D0@BL0PR0102MB3410.prod.exchangelabs.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(8121501046)(5005006)(3231232)(944501410)(52105095)(93006095)(93001095)(10201501046)(3002001)(6041310)(20161123558120)(20161123560045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123564045)(20161123562045)(6072148)(201708071742011);
	SRVR:BL0PR0102MB3410; BCL:0; PCL:0; RULEID:;
	SRVR:BL0PR0102MB3410; 
X-Forefront-PRVS: 0655F9F006
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10009020)(346002)(376002)(366004)(396003)(39380400002)(39840400004)(189003)(199004)(51416003)(956004)(316002)(6666003)(52116002)(26005)(6916009)(3846002)(478600001)(2616005)(16526019)(39060400002)(81166006)(186003)(97736004)(81156014)(2906002)(8676002)(36756003)(1857600001)(7696005)(54906003)(105586002)(53936002)(486006)(107886003)(48376002)(476003)(106356001)(1076002)(50466002)(16586007)(8936002)(4326008)(66066001)(50226002)(5660300001)(47776003)(6116002)(86362001)(68736007)(7736002)(386003)(2351001)(25786009)(305945005)(2361001)(6486002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BL0PR0102MB3410;
	H:columbia.corp.xevo.com; FPR:; SPF:None; LANG:en;
	PTR:InfoNoRecords; MX:3; A:1; 
Received-SPF: None (protection.outlook.com: xevo.com does not designate
	permitted sender hosts)
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; BL0PR0102MB3410;
	23:QYr+R2eylaKS/c2+tO5TCX1AMVnqcISWwzPx/AT?=
	=?us-ascii?Q?i156/g3lAVkTSK67yiPs2QTZRxfFi5l6NQrYH4tez1QEjGle0oYQg2QVGf6q?=
	=?us-ascii?Q?LWNv3RhTmK+ulk9KEl862efTOrZraJvfDStg0eS+oxm6SVF/jRdu4nb3VUZS?=
	=?us-ascii?Q?ODXp4sWep+eFsAcQtrCSgqvMlij8TffF4beSC1CstDUgnqT00YBrP7UUtdsU?=
	=?us-ascii?Q?JlPBEIKlc4i+UqM0LSRFG496ymoFjjn3hiUN/Bo45JWhYdwPEi9tGrZwCMf4?=
	=?us-ascii?Q?ySixrAOXdiCYjlgQrrRIwAtXx/9PCxywMcKgk7QmfzWVx+XWVpfZKaxcTlfr?=
	=?us-ascii?Q?Khe3/WHtEgMyVpcirFrLJt7nZTw6HVtEAbD+NfBVQBFngWoG8FYrnzMKi4Ge?=
	=?us-ascii?Q?NWgvwU4FdMPnixNAZxnT8+dAYZv0fr5+uqgswfJ/2Hpyj5E/nJzKAHkygPap?=
	=?us-ascii?Q?MMhGV6wgMphgC7qZ7red4qn41KWFIBAEul5r9ww/sEHVxWQP/dkzP15tuUH1?=
	=?us-ascii?Q?dfSwdHdEGLNREiytKN7oEVlOq+wGv2qCrFpFFTd9Q7OBhWfL27UvCf2y9bPm?=
	=?us-ascii?Q?4FAcg3nuVeLaGRE1d04ut+FUhZZKE/gigrYMJUgGvPzWDYgajBPB9X4BtXqO?=
	=?us-ascii?Q?h6IXAUrE4tLAdUgKrwWkqI+lwoip2S6WWnsSG0FjQKCgWmk3q2e7TYr1onzR?=
	=?us-ascii?Q?dcvkGRe56HNKsA9MC64h4Z8aVxomqnlP6ws6MPme1sNq26rvwBqhaA5DW5b+?=
	=?us-ascii?Q?UwQvauxZ/eRPbjhKAz+GCXwRfVfC5NodojvWjp3Hea7pzv2AoIh66DKltWeO?=
	=?us-ascii?Q?4bnj6S69myrC4m/FhUPKhrmhHbvDvalhoJdqtDGrGNt9/E3OgZdTrQjk3oPs?=
	=?us-ascii?Q?77j4Z2fNbkZm9/L4B/rAjxbGVe4XJ7fDLli5AWMRl1ipTkvbdwb7rJewcQcv?=
	=?us-ascii?Q?nWNnCd9PeYFPnIrZW5WpXOryq8nPpR5P0q7qqJ6Gcxw2HXcYOV2BxPAIhGOm?=
	=?us-ascii?Q?tjs4sxGzAVLQABhXSi8VSXKu2eAGnxs7Ngk7gUsfgLEiJzeWK1En8PS8ENIH?=
	=?us-ascii?Q?IHIYth8bMKiUeLPmNmzqvNDww4c0DsJrytD9+KG63P1u0NGRvYyFGRR5DY9r?=
	=?us-ascii?Q?uQv7sfnGSSNON6yC1YuTzyb3D+JOlSDL+PTepq+YZm+iZ3yMAJKJ1hLeYmVJ?=
	=?us-ascii?Q?qn2mxoNPI5dUoW5QnY8waFi7LhbHmtvJmKuMpY2D/hP0Tr5TznqkrUGBSuL6?=
	=?us-ascii?Q?gESZ6clLFpdGabWiTdUM=3D?=
X-Microsoft-Antispam-Message-Info: xh3WOsOx6yrIoIkYN67qoIST28Zd3Gobn94odoHQ98Tur2sCHs4Nn/PE09MEyct3vJCoItz2GaWkAmP4WT51fH8Z9B9EPOVkW6w7w2Yrh86TQ0DqFJ+hlQLf3ZcpvNHhQT3h3y/d3dR+uH9vpPkXj0Q4amdWuaBB40NZ+ycNWhdvwu2bRjsqONrvgGKyOphZ
X-Microsoft-Exchange-Diagnostics: 1; BL0PR0102MB3410;
	6:T8Q1kSzu4fJanQPvnRakrBQSSQ45oItS7vcKzKF6p2sY86VLfaiJlD7Lmbl/1I405QuTUwLTyLHOTsso8FU9Ik8OPBrhU0EBSGUf4l/T4PRnUr26iV0MEFxEPqB9pmELYbMpOjrAD9g+HlwYck6GpsYJN3C5ht0VW6vEZsknwuE8rGC7gSVZrtOeW4KVkWHRDD6P/mWi7q86lP2X+7UkyVAJs0D4rgMIiJo/Bg+Jhk+FFUmdc1fPZG5YPGVeWTgHWHZ8MzN+5T+zvfv6KZknFmNAbb7Aba3bdeWUUttisO8HQLrnAwwHgad8QePLziS077CpUOGKClvJEfCVUt2AowXo1XT9bnUVHzMx5LAELsP+0gYD9HImFrmRtejsxOmHt8QGuE5mkmRR26avnwDw5n57fsyVKvs2BlHsgsujswnOuOfpn2t9kGsYU6S3b6GfoTKDowckDyCtfVBDLbLzzQ==;
	5:sfYGyNOGaCzSfRYjZ7NjeWmIQR4RMqCk7jKDkDsr1gAZhw/216FiI5qRQWUifi7fQKYIjd/AZVEXVyLQ1LfPGzY/S/LNqiKnCaEPJyyoSB2cUtSZ6vLF+Kp+VCwg1yGrTYSrx3d2tCh8b96fibQLq5RkKf+9DCxMT3o+bvaNKwU=;
	24:jSDuN7xktMJD+M9Vs0C1Rgkx1+7eYodCbnAH35+RH82nc/1a2qrtBk8nQWVLCxtaM33gmewaQbuysjhwkiolknT59Fz8rui/HST6limSni8=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-Microsoft-Exchange-Diagnostics: 1; BL0PR0102MB3410;
	7:e2S1yCoFXI9hQrq6crQNIurdNKQTB2QqXRLVNoL+PMirum314PmEe8GDsTE0l+cNT9hp4ASTk350aS+wzcz+xL5Mel7/fsrh/rqtmwbAebn/WEVLyqMpsySBfw+WuqdUQ88emVQtc5AbMBWYvbEgcO616HQlNnp4k4sbgL1xcq4npySKatihQxmdTovvnmTXZPtbMknrV2wqzGcshUd2swhPLtwNNsl285njlwo41BBRtUkcrTq3iqo9VTuYHo4y
X-MS-Office365-Filtering-Correlation-Id: 3b2d2cc3-d44b-4c82-68c2-08d5ac66df97
X-OriginatorOrg: xevo.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Apr 2018 17:46:57.5676 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b2d2cc3-d44b-4c82-68c2-08d5ac66df97
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e0a7ca1f-2458-4cd6-a7c7-d733c07495ab
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR0102MB3410
Cc: Scott Rifenbark <srifenbark@gmail.com>
Subject: [yocto-docs][PATCH] dev-manual: document CPU features and QB_CPU_KVM
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
X-List-Received-Date: Fri, 27 Apr 2018 21:19:09 -0000
Content-Type: text/plain

As suggested in a recent mail thread by Martin Jansa, there are cases in
which QEMU under KVM will crash because of CPU feature incompatibilities
between compiled binaries and the host CPU under which qemu is run.
Although this is hard to fully escape, we should document the issue to
help people work around it.

Signed-off-by: Martin Kelly <mkelly@xevo.com>
---
 documentation/dev-manual/dev-manual-qemu.xml | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/documentation/dev-manual/dev-manual-qemu.xml b/documentation/dev-manual/dev-manual-qemu.xml
index f4719ebc3..1870a6a8d 100644
--- a/documentation/dev-manual/dev-manual-qemu.xml
+++ b/documentation/dev-manual/dev-manual-qemu.xml
@@ -343,6 +343,28 @@
         </para>
     </section>
 
+    <section id='qemu-kvm-cpu-compatibility'>
+        <title>QEMU CPU Compatiblity under KVM</title>
+
+        <para>
+            By default, the QEMU build compiles for and targets core2duo (for
+            64-bit x86) and pentium2 (for 32-bit x86). These CPUS are chose to
+            have a broad range of CPU feature compatibility with many commonly
+            used CPUs, but in some cases, they still support a CPU feature that
+            your host CPU does not. Although this is not a problem when QEMU
+            uses software emulation of the feature, it can be when running with
+            KVM enabled. Specifically, software compiled with a certain CPU
+            feature will crash when run on a CPU under KVM that does not support
+            that feature. If this becomes a problem, you can override QEMU's
+            runtime CPU setting by changing the <filename>QB_CPU_KVM</filename>
+            variable in <filename>qemuboot.conf</filename> in the image deploy
+            directory. This setting specifies a <filename>-cpu</filename> option
+            passed into QEMU in the <filename>runqemu</filename> script. Running
+            <filename>qemu -cpu help</filename> will give a list of supported
+            CPU types available.
+        </para>
+    </section>
+
     <section id='qemu-dev-performance'>
         <title>QEMU Performance</title>
 
-- 
2.11.0


