Return-Path: <icastell@nayarsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DF028E009E2; Fri,  4 May 2018 06:57:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, NORMAL_HTTP_TO_IP,
	RCVD_IN_DNSWL_NONE, WEIRD_PORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.41 listed in list.dnswl.org]
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* 0.0 NORMAL_HTTP_TO_IP URI: URI host has a public dotted-decimal IPv4
	*      address
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f41.google.com (mail-it0-f41.google.com
	[209.85.214.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09A2FE0086B
	for <yocto@yoctoproject.org>; Fri,  4 May 2018 06:57:32 -0700 (PDT)
Received: by mail-it0-f41.google.com with SMTP id z6-v6so3437828iti.4
	for <yocto@yoctoproject.org>; Fri, 04 May 2018 06:57:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nayarsystems.com; s=google;
	h=mime-version:from:date:message-id:subject:to;
	bh=0WIUNn2l35hFAWRY8RTb08zUcL/4YaYnL0VvyrwlNZc=;
	b=TNOn9UqZx2X27FTTqSVp6v78fRHRcYh7qOOYoycLdzKdXUHQRWv+fHeb21zWZ0U7VF
	wy0plfIAKCihZUD2X+MU2c0oHo9nI6b/jXMT5S4ds3Zr7zbPkQ9aYrpbYdsNb5ISS9IE
	8v0vHq2jF9nV3qBLBKHuuC4AbIltTd0qRGT4w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=0WIUNn2l35hFAWRY8RTb08zUcL/4YaYnL0VvyrwlNZc=;
	b=c2WnuidMwHkJVqZKE/ie8PRGS2tN9FHhS7U3Ogm6CrEynOo1AwSYKdrHIcToF9rASk
	km6/YAQ/o0H0Tf/a39ufgYEVsj2yfdym2gy6AwMLmCCxFvxFkevNzl4hTcK1gciGbhrR
	ZdHi+1c2j4bPlrtMHpBPnMrgd8cmAPslGmfQ5lijkWTjLS1d2KiBT4ll4gh2WygQ+le7
	1BP2rMdwPO+9w4kn+geaSoGfskbo67/1XoLIAabiZ7nwv6lao6UwLD7le/OInaX0WLET
	cw/MUD8qRxDG0QNP5QgESR+4bLIoChP85rWiPnvQCrjldtJJjJVpiMLD81ByIQalHtLP
	KMWg==
X-Gm-Message-State: ALQs6tBf0HqCX5chGdPxZel+rZx0C3n1G3IC3MFx6qSRLxb9Rp3i2o4t
	OUnVAjXLsV9tnSyDsGRlXrro3PrtiAenB86rU4ZgVqlp
X-Google-Smtp-Source: AB8JxZp2A8/NQBixsSl+gQLaklNx7gczDScIq1wMZcQ6/UE88pV6wki/PpRKhPMac3qp9HnauQmdo3r9jGc3wGpe5YI=
X-Received: by 2002:a24:25d0:: with SMTP id
	g199-v6mr10596085itg.26.1525442251527; 
	Fri, 04 May 2018 06:57:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:4b04:0:0:0:0:0 with HTTP;
	Fri, 4 May 2018 06:57:31 -0700 (PDT)
From: =?UTF-8?Q?Iv=C3=A1n_Castell?= <icastell@nayarsystems.com>
Date: Fri, 4 May 2018 15:57:31 +0200
Message-ID: <CAALXFYzFeuLLM+V9ngH=V+K53DQnjaUX_piE6k4zECZ7jLEirw@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Writing a functional Dockerfile to run a container with a package revision (PR) server
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
X-List-Received-Date: Fri, 04 May 2018 13:57:34 -0000
Content-Type: multipart/alternative; boundary="0000000000008731da056b61b3e1"

--0000000000008731da056b61b3e1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The purpose is deploying a yocto PR server using a docker container. More
info about PR server can be found in the following link:
https://wiki.yoctoproject.org/wiki/PR_Service

To try doing that I wrote this "Dockerfile" to generate a docker image:

FROM ubuntu:16.04
MAINTAINER Yocto <yocto@mydomain.com>

# Update, upgrade and install
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y gawk wget git git-core diffstat unzip texinfo
gcc-multilib build-essential chrpath socat xterm curl parted python python3
python3-pip python3-pexpect xz-utils debianutils iputils-ping libsdl1.2-dev
net-tools

# Set up locales
RUN apt-get -y install locales apt-utils sudo && dpkg-reconfigure locales
&& locale-gen en_US.UTF-8 && update-locale LC_ALL=3Den_US.UTF-8
LANG=3Den_US.UTF-8
ENV LANG en_US.utf8

# Clean up APT when done
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Replace dash with bash
RUN rm /bin/sh && ln -s bash /bin/sh

# Yocto user management
RUN groupadd -g 1000 yocto && useradd -u 1000 -g 1000 -ms /bin/bash yocto
&& usermod -a -G sudo yocto && usermod -a -G users yocto
ENV HOME /home/yocto
USER yocto

# Download poky
RUN git clone --branch rocko git://git.yoctoproject.org/poky
/home/yocto/poky

# Create some directories
RUN mkdir -p /home/yocto/build /home/yocto/prserv

# Make /home/yocto/poky the working directory
WORKDIR /home/yocto/poky

# Expose listen port
EXPOSE 8585

# Run PR-server
CMD /bin/sh -c " \
    source ./oe-init-build-env ../build \
    && bitbake-prserv --start --file /home/yocto/prserv/sqlite3.db --log
/tmp/prserv.log --port 8585 \
"
Using previous Dockerfile I build a docker image:

$ docker build -t docker-prserver .
[...]
Successfully built 362f4599b1b6
Successfully tagged docker-prserver:latest

As you can see before, the process ends successfully. After that, I run a
container:

$ docker run -ti docker-prserver
yocto@b3c9fd06d8af:~/poky$

The previous command creates a shell. I check if the process
=E2=80=9Cbitbake-prserver=E2=80=9D is running:

$ netstat -nat
Active Internet connections (servers and established)
Proto Recv-Q Send-Q Local Address           Foreign Address         State

As you can see, the =E2=80=9Cbitbake-prserver=E2=80=9D process is not runni=
ng (no listen
port). However, if I log into the container and execute the CMD command:

yocto@b3c9fd06d8af:~/poky/build$ source ./oe-init-build-env ../build/ &&
bitbake-prserv --start --file /home/yocto/prserv/sqlite3.db --log
/tmp/prserv.log --port 8585

Then it works fine:

yocto@b3c9fd06d8af:~$ netstat -nat
Active Internet connections (servers and established)
Proto Recv-Q Send-Q Local Address           Foreign Address    State
tcp        0      0 0.0.0.0:8585            0.0.0.0:*          LISTEN

It=E2=80=99s supposed that CMD is executed when the container is instantiat=
ed, but
this is not happening. What is the right way to write a Dockerfile to run a
bitbake-prserv server listening on the exposed port?

Hope some of you have some experience on this and can provide some useful
feedback.

Thanks a lot in advance! :)

--0000000000008731da056b61b3e1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>The purpose is deploying a yocto PR server using=
 a docker container. More info about PR server can be found in the followin=
g link:=C2=A0<a href=3D"https://wiki.yoctoproject.org/wiki/PR_Service">http=
s://wiki.yoctoproject.org/wiki/PR_Service</a></div><div><br></div><div>To t=
ry doing that I wrote this &quot;Dockerfile&quot; to generate a docker imag=
e:</div><div><br></div><div>FROM ubuntu:16.04</div><div>MAINTAINER Yocto &l=
t;<a href=3D"mailto:yocto@mydomain.com">yocto@mydomain.com</a>&gt;</div><di=
v><br></div><div># Update, upgrade and install</div><div>RUN apt-get update=
</div><div>RUN apt-get upgrade -y</div><div>RUN apt-get install -y gawk wge=
t git git-core diffstat unzip texinfo gcc-multilib build-essential chrpath =
socat xterm curl parted python python3 python3-pip python3-pexpect xz-utils=
 debianutils iputils-ping libsdl1.2-dev net-tools</div><div><br></div><div>=
# Set up locales</div><div>RUN apt-get -y install locales apt-utils sudo &a=
mp;&amp; dpkg-reconfigure locales &amp;&amp; locale-gen en_US.UTF-8 &amp;&a=
mp; update-locale LC_ALL=3Den_US.UTF-8 LANG=3Den_US.UTF-8</div><div>ENV LAN=
G en_US.utf8</div><div><br></div><div># Clean up APT when done</div><div>RU=
N apt-get clean &amp;&amp; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*</d=
iv><div><br></div><div># Replace dash with bash</div><div>RUN rm /bin/sh &a=
mp;&amp; ln -s bash /bin/sh</div><div><br></div><div># Yocto user managemen=
t</div><div>RUN groupadd -g 1000 yocto &amp;&amp; useradd -u 1000 -g 1000 -=
ms /bin/bash yocto &amp;&amp; usermod -a -G sudo yocto &amp;&amp; usermod -=
a -G users yocto</div><div>ENV HOME /home/yocto</div><div>USER yocto</div><=
div><br></div><div># Download poky</div><div>RUN git clone --branch rocko g=
it://<a href=3D"http://git.yoctoproject.org/poky">git.yoctoproject.org/poky=
</a> /home/yocto/poky</div><div><br></div><div># Create some directories</d=
iv><div>RUN mkdir -p /home/yocto/build /home/yocto/prserv</div><div><br></d=
iv><div># Make /home/yocto/poky the working directory</div><div>WORKDIR /ho=
me/yocto/poky</div><div><br></div><div># Expose listen port</div><div>EXPOS=
E 8585</div><div><br></div><div># Run PR-server</div><div>CMD /bin/sh -c &q=
uot; \</div><div>=C2=A0 =C2=A0 source ./oe-init-build-env ../build \</div><=
div>=C2=A0 =C2=A0 &amp;&amp; bitbake-prserv --start --file /home/yocto/prse=
rv/sqlite3.db --log /tmp/prserv.log --port 8585 \</div><div>&quot;</div><di=
v>Using previous Dockerfile I build a docker image:</div><div><br></div><di=
v>$ docker build -t docker-prserver .</div><div>[...]</div><div>Successfull=
y built 362f4599b1b6</div><div>Successfully tagged docker-prserver:latest</=
div><div><br></div><div>As you can see before, the process ends successfull=
y. After that, I run a container:</div><div><br></div><div>$ docker run -ti=
 docker-prserver</div><div>yocto@b3c9fd06d8af:~/poky$</div><div><br></div><=
div>The previous command creates a shell. I check if the process =E2=80=9Cb=
itbake-prserver=E2=80=9D is running:</div><div><br></div><div>$ netstat -na=
t</div><div>Active Internet connections (servers and established)</div><div=
>Proto Recv-Q Send-Q Local Address=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
Foreign Address=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0State=C2=A0</div><div><br>=
</div><div>As you can see, the =E2=80=9Cbitbake-prserver=E2=80=9D process i=
s not running (no listen port). However, if I log into the container and ex=
ecute the CMD command:</div><div><br></div><div>yocto@b3c9fd06d8af:~/poky/b=
uild$ source ./oe-init-build-env ../build/ &amp;&amp; bitbake-prserv --star=
t --file /home/yocto/prserv/sqlite3.db --log /tmp/prserv.log --port 8585</d=
iv><div><br></div><div>Then it works fine:</div><div><br></div><div>yocto@b=
3c9fd06d8af:~$ netstat -nat</div><div>Active Internet connections (servers =
and established)</div><div>Proto Recv-Q Send-Q Local Address=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0Foreign Address=C2=A0 =C2=A0 State=C2=A0 =C2=A0 =
=C2=A0=C2=A0</div><div>tcp=C2=A0 =C2=A0 =C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0=
 0 <a href=3D"http://0.0.0.0:8585">0.0.0.0:8585</a>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 0.0.0.0:*=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 LISTEN=C2=A0 =
=C2=A0 =C2=A0</div><div><br></div><div>It=E2=80=99s supposed that CMD is ex=
ecuted when the container is instantiated, but this is not happening. What =
is the right way to write a Dockerfile to run a bitbake-prserv server liste=
ning on the exposed port?</div><div><br></div><div>Hope some of you have so=
me experience on this and can provide some useful feedback.</div><div><br><=
/div><div>Thanks a lot in advance! :)</div><div><br></div></div>
</div>

--0000000000008731da056b61b3e1--
