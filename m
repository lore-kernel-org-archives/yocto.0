Return-Path: <yocto@emagii.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D652E009DB; Mon, 26 Mar 2018 13:01:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	TEQF_USR_MSGID_HEX autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [81.236.60.156 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 1.0 TEQF_USR_MSGID_HEX To and from user nearly same + unusual message
	ID
Received: from v-smtpout3.han.skanova.net (v-smtpout3.han.skanova.net
	[81.236.60.156])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5963BE0084A
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2018 13:01:09 -0700 (PDT)
Received: from [10.175.196.237] ([37.123.169.62]) by cmsmtp with ESMTPA
	id 0YIlfZZysB6PD0YIlfuSc1; Mon, 26 Mar 2018 22:01:07 +0200
To: "N:" <yocto@yoctoproject.org>
From: Ulf Samuelsson <yocto@emagii.com>
Message-ID: <a4c194cc-78bc-08c3-491b-3130d7d3d019@emagii.com>
Date: Mon, 26 Mar 2018 22:01:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
X-CMAE-Envelope: MS4wfKDkUf94YCnqyB1VmUPYIru6upqC+qQwHbNU+2Xex+waDgqTJAngYMffbmgJBDG9d7I/sfNzgqpO00aS25vfFuzi3kFRj7onHjWZQ0yTirQkP4vhLkKs
	VVh0rRHsjwMM0Bn+r6bVjrqFH1sx2uaXrn8fNAgxZlGxXmFE1GTloU/p
Subject: How to add a module to python-native
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
X-List-Received-Date: Mon, 26 Mar 2018 20:01:11 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Need some advice on how to extend python-native with a python-2.7 module.

I am planning to upload the result of cve-check to our JIRA server.
I wrote a python application which reads the CVE manifest,
downloads the contents of a JIRA project and if a CVE issue
is not present in the database, it will create new issues.

The python application is using the python-restkit module, which has all 
the functionality I need, so I can call <script> -f <manifest>
and the JIRA will be updated.

Would like to integrate this with bitbake using a bbclass.

The class will be inherited in local.conf, and will check
if the recipe is an image, and if so, it will call a task
which executes right after the manifest is created and calls
the python script.

do_cve_update_jira () {
     <call python scripts>
}

python-native does not build python-restkit, so I have
created a recipe python-restkit which bbextends native.

do_cve_update_jira[depends] = "python-restkit-native"

This seems to ensure that the python-restkit is built and
in the x86 sysroot I have /usr/lib/python-2.7/sitepackages/restkit.

Still, when the python script is called, "import restkit" fails.

Would like to understand how to make sure that python-restkit-native
is always available to a recipe.


I guess, I could make each image somehow depend on python-restkit 
native, but it would be better if it was always available to a recipe.

Would appreciate some advice here.

python-restkit is unfortunately only available for python2, not for 
python3. Any advice on a good replacement?


Best Regards.
Ulf Samuelsson



