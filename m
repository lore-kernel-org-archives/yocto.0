Return-Path: <Konrad.Scherer@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2F3CBE00B18; Tue,  2 Oct 2018 11:45:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=unavailable version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2169DE00718;
	Tue,  2 Oct 2018 11:45:54 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w92IjrcK012273
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 2 Oct 2018 11:45:53 -0700 (PDT)
Received: from [128.224.21.130] (128.224.21.130) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.408.0;
	Tue, 2 Oct 2018 11:45:52 -0700
From: Konrad Scherer <Konrad.Scherer@windriver.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>, Michael Halstead
	<michael@yoctoproject.org>
References: <2274431.fXWzuTuIFg@localhost.localdomain>
	<2479608.PqWI51YQi8@localhost.localdomain>
	<1924287.nmYE9jUvR3@localhost.localdomain>
	<3087295.eQxHIGtfj0@localhost.localdomain>
Message-ID: <9a57b1bd-08dc-ff59-ae05-75e88ec83870@windriver.com>
Date: Tue, 2 Oct 2018 14:45:50 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <3087295.eQxHIGtfj0@localhost.localdomain>
X-Originating-IP: [128.224.21.130]
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Tue, 02 Oct 2018 18:45:56 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 09/05/2018 08:04 AM, Paul Eggleton wrote:
> On Thursday, 30 August 2018 11:44:10 AM NZST Paul Eggleton wrote:
>> On Wednesday, 29 August 2018 10:46:27 PM NZST Paul Eggleton wrote:
>>> I know Konrad promised to update the docker-compose setup to be closer
>>> to what we'd done recently with the docker setup, but I needed something
>>> urgently and wanted to learn how to use docker-compose anyway, so I've
>>> put this together:
>>>
>>>    http://git.yoctoproject.org/cgit/cgit.cgi/layerindex-web/log/?h=paule/docker-compose
>>>
>>> Let me know what you think - it works well enough for me here, although the
>>> setup commands are now a bit ugly on their own.
>>
>> I realised this morning that "docker-compose run" can simplify a lot of the
>> docker run commands, so I've just converted most of the commands in
>> docker/README and pushed the branch again.
> 
> So, any comments?

Sorry for the delay. I just rebased our internal layerindex to the 
latest and made some updates to the Dockerfiles and other files.

https://github.com/WindRiver-OpenSourceLabs/layerindex-web/tree/rebase-20181002

Dockerfile:
- added the wheel package to avoid errors in pip package installation
- Used ADD --chown to add all the files with the correct permissions to 
avoid a second chown RUN step
- Used an entrypoint.sh script instead of CMD to handle things like db 
initialization, creating a superuser, overriding default configuration 
with environment variables and collecting static files. The same 
entrypoint is used to start either the celery-worker or gunicorn.

https://github.com/WindRiver-OpenSourceLabs/layerindex-web/blob/rebase-20181002/docker/entrypoint.sh

docker/docker-compose.yaml:
- separating the gunicorn and the celery-worker is a good idea
- the blacklabelops/nginx image generates the nginx config from env 
variables which makes development easier. Changing an env var in 
docker-compose.yaml is easier than rebuilding the image or bind-mounting 
in a new version.
- One thing I didn't put in passing in the DB username and password 
because I am using this as a test instance, not a production one. Should 
be a simple change.

I had problems setting up a reverse proxy for the layerindex-web app 
when using a subpath (ie. http://<host>/li/). In urls.py, the leading 
slash on the last redirect works as a redirect to an absolute path and 
breaks the redirect when using a subpath . Fortunately the fix is simple 
and doesn't break usage without a subpath.

https://github.com/WindRiver-OpenSourceLabs/layerindex-web/commit/4586ff3f4fa477daa6e0bee6c6e9e0602105c8d2#diff-de6dd4b4c889fe0882cfd3f6df5aa451L29

Thanks!

-- 
Konrad Scherer, MTS, Linux Products Group, Wind River

