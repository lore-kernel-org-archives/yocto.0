Return-Path: <mircea.gliga@vitheia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D91CDE008E3; Tue, 20 Dec 2016 06:05:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 2743 seconds by postgrey-1.32 at yocto-www;
	Tue, 20 Dec 2016 06:04:57 PST
Received: from zeus.integrasoft.ro (zeus.integrasoft.ro [193.231.162.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10E9CE00874
	for <yocto@yoctoproject.org>; Tue, 20 Dec 2016 06:04:57 -0800 (PST)
Received: from [193.231.162.34] (echelon.integrasoft.ro [193.231.162.34])
	(authenticated bits=0)
	by zeus.integrasoft.ro (8.13.8/8.13.8) with ESMTP id uBKDJBoT018083
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NO)
	for <yocto@yoctoproject.org>; Tue, 20 Dec 2016 15:19:11 +0200
From: Mircea Gliga <mircea.gliga@vitheia.com>
To: yocto@yoctoproject.org
Message-ID: <377d750d-b4d3-d7da-f922-c35fc457c39c@vitheia.com>
Date: Tue, 20 Dec 2016 15:19:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Icedove/45.5.1
MIME-Version: 1.0
Subject: yocto autobuilder scheduler
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
X-List-Received-Date: Tue, 20 Dec 2016 14:05:00 -0000
Content-Type: multipart/alternative;
	boundary="------------A24EA0E255C3CAD2019FC3ED"

--------------A24EA0E255C3CAD2019FC3ED
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi

I'm using yocto-autobuilder to build my images. I have a GitPoller 
scheduler, that triggers a build when one of the layers, eg 
meta-mylayer, changes.
In my buildset I have something like:

[...]
repos: [{'poky':
             {'repourl':'git://git.yoctoproject.org/poky',
              'layerversion':{'core':'meta', 'yocto':'meta-yocto', 
'poky':'meta-poky', 'yoctobsp':'meta-yocto-bsp'},
              'branch':'krogoth'}},
         {'meta-openembedded':
{'repourl':'git://git.openembedded.org/meta-openembedded',
              'layerversion':{'mete-oe':'meta-oe', 
'networking':'meta-networking', 'python':'meta-python'},
              # add autoinclude false to prevent automatic add of teh 
meta-openembedded foler to the BBLAYERS; sub folders must be added
              'autoinclude': False,
              'branch':'krogoth'}},
         {'meta-mylayer':
             {'repourl':'http://server.tld/git/meta-mylayer.git',
              'branch':'master'}},
        ]
scheduler: [{'git-poller-scheduler':
             {'type':'SingleBranchScheduler',
              'changesource':'GitPoller',
              'repository':'meta-mylayer',
              'branch':'master',
              'interval':'300',
              'stable-timer':30}}]

Is it possible to trigger a build when another repository, eg. the 
application repository, changes ? Obviously, that repo is not in the 
"repos" field of the buildset.
According to the "repository" field documentation, "the repository to 
attach the scheduler to; this is the repo name from the 'repos' 
section;[...]"

Thanks and regards.



--------------A24EA0E255C3CAD2019FC3ED
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    Hi<br>
    <br>
    I'm using yocto-autobuilder to build my images. I have a GitPoller
    scheduler, that triggers a build when one of the layers, eg
    meta-mylayer, changes.<br>
    In my buildset I have something like:<br>
    <br>
    [...]<br>
    repos: [{'poky':<br>
                {'repourl':'git://git.yoctoproject.org/poky',<br>
                 'layerversion':{'core':'meta', 'yocto':'meta-yocto',
    'poky':'meta-poky', 'yoctobsp':'meta-yocto-bsp'},<br>
                 'branch':'krogoth'}},<br>
            {'meta-openembedded':<br>
               
    {'repourl':'git://git.openembedded.org/meta-openembedded',<br>
                 'layerversion':{'mete-oe':'meta-oe',
    'networking':'meta-networking', 'python':'meta-python'},<br>
                 # add autoinclude false to prevent automatic add of teh
    meta-openembedded foler to the BBLAYERS; sub folders must be added<br>
                 'autoinclude': False,<br>
                 'branch':'krogoth'}},<br>
            {'meta-mylayer':<br>
                {'repourl':'<a class="moz-txt-link-freetext" href="http://server.tld/git/meta-mylayer.git">http://server.tld/git/meta-mylayer.git</a>',<br>
                 'branch':'master'}},<br>
           ]<br>
    scheduler: [{'git-poller-scheduler':<br>
                {'type':'SingleBranchScheduler',<br>
                 'changesource':'GitPoller',<br>
                 'repository':'meta-mylayer',<br>
                 'branch':'master',<br>
                 'interval':'300',<br>
                 'stable-timer':30}}]<br>
    <br>
    Is it possible to trigger a build when another repository, eg. the
    application repository, changes ? Obviously, that repo is not in the
    "repos" field of the buildset.<br>
    According to the "repository" field documentation, "<span class="c0">the
      repository to attach the scheduler to; this is the repo name from
      the 'repos' section;[...]</span>"<br>
    <br>
    Thanks and regards.<br>
    <br>
    <br>
  </body>
</html>

--------------A24EA0E255C3CAD2019FC3ED--
