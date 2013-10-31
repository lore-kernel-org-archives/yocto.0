Return-Path: <soniaverma9727@gmail.com>
Received: from mail-we0-f179.google.com (mail-we0-f179.google.com
	[74.125.82.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E316E017D3
	for <yocto@yoctoproject.org>; Thu, 31 Oct 2013 09:56:59 -0700 (PDT)
Received: by mail-we0-f179.google.com with SMTP id w61so3007809wes.10
	for <yocto@yoctoproject.org>; Thu, 31 Oct 2013 09:56:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=lBlpNdcifwoOtw+BPvvTmHNZfQYHmHjDpGVsjCzND4g=;
	b=YxjB0BiPNppvCavacrqaCjkjK24wPz75H/0b9k0CFFT+SAHJj+yNUeR2MUT/N/NkGa
	ZsbX4SceNRRPf9x9okMxrVgIEbf66HwVHnbk5vq4xav9+A1S+j1E0GHIGfWIl/kSJBu9
	pG5dnX9qk9n+VRjvcoe934EW2z+1qCk9PNpAZZglk4WvSGWEtrkee0/VlklYcQ3oBGaj
	DHXFrX3eg+5dBfu688OXGFGsyjOWNcMF3zZlFfj2fJ1Ws3CHUzO5XYESmaIoM05ywh0K
	vh4YL6NSLsHMA8Bc3HQoDLIh2ZgGD/l9toFkz5lx83VxifVzJ50VjdCmorQyS/xJL55q
	qTyA==
MIME-Version: 1.0
X-Received: by 10.194.173.163 with SMTP id bl3mr3921766wjc.10.1383238618133;
	Thu, 31 Oct 2013 09:56:58 -0700 (PDT)
Received: by 10.194.9.193 with HTTP; Thu, 31 Oct 2013 09:56:58 -0700 (PDT)
In-Reply-To: <CAMKF1sqkCKjY=hmOgNw9ezs3EuCXtenv+OVY1xP1FWKV_chq5A@mail.gmail.com>
References: <CAJ7Vayh_TRCh8fCzafG9vbkD8Wu9rF_a0A-L=bV39tA2hv_8-w@mail.gmail.com>
	<CAMKF1sqkCKjY=hmOgNw9ezs3EuCXtenv+OVY1xP1FWKV_chq5A@mail.gmail.com>
Date: Thu, 31 Oct 2013 22:26:58 +0530
Message-ID: <CAJ7VayhABvPqSXi-KTFUG58GB9hCDL9mHNoLfX_RxO5JQxMkPQ@mail.gmail.com>
From: sonia verma <soniaverma9727@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: enable Shark support in JAVA
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
X-List-Received-Date: Thu, 31 Oct 2013 16:57:00 -0000
Content-Type: multipart/alternative; boundary=089e013c6220794c2804ea0c5613

--089e013c6220794c2804ea0c5613
Content-Type: text/plain; charset=ISO-8859-1

Hi Khem

Actually I'm runninng JAVA based Opendaylight controller on powerpc
architecture with zero ineterpreter mode and it takes about 10 min to start.

On the another hand when I run it on x-86 machine,in hardly takes few
seconds to start.

Board supporting java:
java version "1.7.0_25"
OpenJDK Runtime Environment (IcedTea 2.3.12) (25b30-2.3.12)
OpenJDK Zero VM (build 23.7-b01, interpreted mode)

Java -version at x-86 is as follows..
java -version
java version "1.7.0_25"
OpenJDK Runtime Environment (IcedTea 2.3.10) (7u25-2.3.10-1ubuntu0.12.04.2)
OpenJDK Server VM (build 23.7-b01, mixed mode)

2013-10-31 01:00:03.508 UTC [Start Level Event Dispatcher] INFO
o.o.c.s.binding.impl.BrokerActivator - Binding Aware Broker initialized
osgi> 2013-10-31 01:00:04.374 UTC [Start Level Event Dispatcher] INFO
o.o.c.c.s.internal.
ClusterManager - I'm a GossipRouter will listen on 1
2013-10-31 01:00:04.611 UTC [Start Level Event Dispatcher] INFO
o.o.c.c.s.internal.ClusterManager - Started GossipRouter
GossipRouter started at Thu Oct 31 01:00:04 UTC 2013
Listening on port 12001 bound on address 0.0.0.0/0.0.0.0
Backlog is 1000, linger timeout is 2000, and read timeout is 0
2013-10-31 01:00:04.612 UTC [Start Level Event Dispatcher] INFO
o.o.c.c.s.internal.ClusterManager - Starting the ClusterManager
2013-10-31 01:00:13.639 UTC [Start Level Event Dispatcher] INFO
o.o.c.c.i.ConfigurationService - ConfigurationService Manager init
2013-10-31 01:00:15.782 UTC [Start Level Event Dispatcher] INFO
o.o.c.n.i.osgi.NetconfImplActivator - Starting TCP netconf server at
/127.0.3
Oct 31, 2013 1:00:17 AM org.apache.catalina.core.AprLifecycleListener init
INFO: The APR based Apache Tomcat Native library which allows optimal
performance in production environments was not found on the java.librarb
Oct 31, 2013 1:00:22 AM org.apache.coyote.AbstractProtocol init
INFO: Initializing ProtocolHandler ["http-bio-8080"]
Oct 31, 2013 1:00:23 AM
org.apache.catalina.mbeans.GlobalResourcesLifecycleListener createMBeans
SEVERE: No global naming context defined for server
Oct 31, 2013 1:00:23 AM org.apache.catalina.core.StandardService
startInternal
INFO: Starting service Catalina
Oct 31, 2013 1:00:23 AM org.apache.catalina.core.StandardEngine
startInternal
INFO: Starting Servlet Engine: Apache Tomcat/7.0.32
Oct 31, 2013 1:00:23 AM org.apache.coyote.AbstractProtocol start
INFO: Starting ProtocolHandler ["http-bio-8080"]
2013-10-31 01:01:46.580 UTC [ConfigPersister-registrator] INFO
o.o.c.n.p.i.ConfigPersisterNotificationHandler - Session id received from
net1
2013-10-31 01:01:46.587 UTC [ConfigPersister-registrator] INFO
o.o.c.n.p.i.ConfigPersisterNotificationHandler - No last config provided by
b]
Oct 31, 2013 1:02:08 AM org.apache.catalina.core.ApplicationContext log
INFO: No Spring WebApplicationInitializer types detected on classpath
Oct 31, 2013 1:02:09 AM org.apache.catalina.core.ApplicationContext log
INFO: Initializing Spring FrameworkServlet 'Flows'
Oct 31, 2013 1:02:35 AM
com.sun.jersey.server.impl.application.WebApplicationImpl _initiate
INFO: Initiating Jersey application, version 'Jersey: 1.17 01/17/2013 03:31
PM'
Oct 31, 2013 1:02:35 AM
com.sun.jersey.server.impl.application.DeferredResourceConfig$ApplicationHolder
<init>
INFO: Instantiated the Application class
org.opendaylight.controller.northbound.commons.NorthboundApplication
Oct 31, 2013 1:02:52 AM
com.sun.jersey.server.impl.application.WebApplicationImpl _initiate
INFO: Initiating Jersey application, version 'Jersey: 1.17 01/17/2013 03:31
PM'
Oct 31, 2013 1:02:52 AM
com.sun.jersey.server.impl.application.DeferredResourceConfig$ApplicationHolder
<init>
INFO: Instantiated the Application class
org.opendaylight.controller.northbound.commons.NorthboundApplication
Oct 31, 2013 1:03:22 AM org.apache.catalina.core.ApplicationContext log
INFO: No Spring WebApplicationInitializer types detected on classpath
Oct 31, 2013 1:03:23 AM org.apache.catalina.core.ApplicationContext log
INFO: Initializing Spring FrameworkServlet 'RootGUI'
Oct 31, 2013 1:03:44 AM org.apache.catalina.core.ApplicationContext log
INFO: No Spring WebApplicationInitializer types detected on classpath
Oct 31, 2013 1:03:44 AM org.apache.catalina.core.ApplicationContext log
INFO: Initializing Spring FrameworkServlet 'Devices'
Oct 31, 2013 1:04:01 AM
com.sun.jersey.server.impl.application.WebApplicationImpl _initiate
INFO: Initiating Jersey application, version 'Jersey: 1.17 01/17/2013 03:31
PM'
Oct 31, 2013 1:04:01 AM
com.sun.jersey.server.impl.application.DeferredResourceConfig$ApplicationHolder
<init>
INFO: Instantiated the Application class
org.opendaylight.controller.northbound.commons.NorthboundApplication
Oct 31, 2013 1:04:17 AM
com.sun.jersey.server.impl.application.WebApplicationImpl _initiate
INFO: Initiating Jersey application, version 'Jersey: 1.17 01/17/2013 03:31
PM'
Oct 31, 2013 1:04:17 AM
com.sun.jersey.server.impl.application.DeferredResourceConfig$ApplicationHolder
<init>
INFO: Instantiated the Application class
org.opendaylight.controller.northbound.commons.NorthboundApplication
Oct 31, 2013 1:04:38 AM org.apache.catalina.core.ApplicationContext log
INFO: No Spring WebApplicationInitializer types detected on classpath
Oct 31, 2013 1:04:38 AM org.apache.catalina.core.ApplicationContext log
INFO: Initializing Spring FrameworkServlet 'Troubleshoot'
Oct 31, 2013 1:04:48 AM
com.sun.jersey.server.impl.application.WebApplicationImpl _initiate
INFO: Initiating Jersey application, version 'Jersey: 1.17 01/17/2013 03:31
PM'
Oct 31, 2013 1:04:48 AM
com.sun.jersey.server.impl.application.DeferredResourceConfig$ApplicationHolder
<init>
INFO: Instantiated the Application class
org.opendaylight.controller.networkconfig.neutron.northbound.NeutronNorthboundRSApplication
Oct 31, 2013 1:05:05 AM
com.sun.jersey.server.impl.application.WebApplicationImpl _initiate
INFO: Initiating Jersey application, version 'Jersey: 1.17 01/17/2013 03:31
PM'
Oct 31, 2013 1:05:05 AM
com.sun.jersey.server.impl.application.DeferredResourceConfig$ApplicationHolder
<init>
INFO: Instantiated the Application class
org.opendaylight.controller.northbound.commons.NorthboundApplication
Oct 31, 2013 1:05:21 AM
com.sun.jersey.server.impl.application.WebApplicationImpl _initiate
INFO: Initiating Jersey application, version 'Jersey: 1.17 01/17/2013 03:31
PM'
Oct 31, 2013 1:05:21 AM
com.sun.jersey.server.impl.application.DeferredResourceConfig$ApplicationHolder
<init>
INFO: Instantiated the Application class
org.opendaylight.controller.northbound.commons.NorthboundApplication
Oct 31, 2013 1:05:45 AM org.apache.catalina.core.ApplicationContext log
INFO: No Spring WebApplicationInitializer types detected on classpath
Oct 31, 2013 1:05:45 AM org.apache.catalina.core.ApplicationContext log
INFO: Initializing Spring FrameworkServlet 'Topology'
2013-10-31 01:05:48.392 UTC [Start Level Event Dispatcher] INFO
o.o.c.s.t.provider.ToasterProvider - Provider Session initialized
Oct 31, 2013 1:06:03 AM
com.sun.jersey.server.impl.application.WebApplicationImpl _initiate
INFO: Initiating Jersey application, version 'Jersey: 1.17 01/17/2013 03:31
PM'
Oct 31, 2013 1:06:03 AM
com.sun.jersey.server.impl.application.DeferredResourceConfig$ApplicationHolder
<init>
INFO: Instantiated the Application class
org.opendaylight.controller.northbound.commons.NorthboundApplication
2013-10-31 01:06:06.154 UTC [ControllerI/O Thread] INFO
o.o.c.p.o.core.internal.ControllerIO - Controller is now listening on
any:6633
2013-10-31 01:06:07.050 UTC [ControllerI/O Thread] INFO
o.o.c.p.o.core.internal.Controller - Switch:192.168.6.123:56750 is
connected to the r
Oct 31, 2013 1:06:07 AM
com.sun.jersey.server.impl.application.WebApplicationImpl _initiate
INFO: Initiating Jersey application, version 'Jersey: 1.17 01/17/2013 03:31
PM'
Oct 31, 2013 1:06:07 AM
com.sun.jersey.server.impl.application.DeferredResourceConfig$ApplicationHolder
<init>
INFO: Instantiated the Application class
org.opendaylight.controller.containermanager.northbound.ContainerManagerNorthboundRSApplication
2013-10-31 01:06:10.563 UTC [ControllerI/O Thread] INFO
o.o.c.p.o.core.internal.Controller - Switch:192.168.6.137:52815 is
connected to the r
2013-10-31 01:06:12.369 UTC [pool-13-thread-1] INFO
o.o.c.f.i.ForwardingRulesManager - Forwarding mode for node
OF|00:00:00:04:9f:02:a3:e3 se
2013-10-31 01:06:12.371 UTC [pool-13-thread-1] WARN
o.o.c.f.i.ForwardingRulesManager - Failed to remove Proactive Static flow:
__Punt ARP__
2013-10-31 01:06:12.372 UTC [pool-13-thread-1] WARN
o.o.c.f.i.ForwardingRulesManager - Failed to remove Proactive Static flow:
__Punt LLDP__
2013-10-31 01:06:12.373 UTC [pool-13-thread-1] WARN
o.o.c.f.i.ForwardingRulesManager - Failed to remove Proactive Static flow:
__Catch-All D_
2013-10-31 01:06:12.753 UTC [fileinstall-./plugins] INFO
o.o.c.s.l.i.LoadBalancerService - Running container name:default
2013-10-31 01:06:12.756 UTC [fileinstall-./plugins] INFO
o.o.c.s.l.i.LoadBalancerService - ConfigManager [vips={}, pools={}]
Oct 31, 2013 1:06:20 AM
com.sun.jersey.server.impl.application.WebApplicationImpl _initiate
INFO: Initiating Jersey application, version 'Jersey: 1.17 01/17/2013 03:31
PM'
Oct 31, 2013 1:06:20 AM
com.sun.jersey.server.impl.application.DeferredResourceConfig$ApplicationHolder
<init>
INFO: Instantiated the Application class
org.opendaylight.controller.northbound.commons.NorthboundApplication
Oct 31, 2013 1:06:27 AM
com.sun.jersey.server.impl.application.WebApplicationImpl _initiate
INFO: Initiating Jersey application, version 'Jersey: 1.17 01/17/2013 03:31
PM'
Oct 31, 2013 1:06:27 AM
com.sun.jersey.server.impl.application.DeferredResourceConfig$ApplicationHolder
<init>
INFO: Instantiated the Application class
org.opendaylight.controller.northbound.commons.NorthboundApplication.

I have read that enabling shark would speed up the process. Please help in
tackling the above issue


Thanks




On Thu, Oct 31, 2013 at 9:56 PM, Khem Raj <raj.khem@gmail.com> wrote:

> On Thu, Oct 31, 2013 at 8:08 AM, sonia verma <soniaverma9727@gmail.com>
> wrote:
> > Hi ALL,
> >
> > I have integrated Java in one of the board having Powerpc architecture
> using
> > meta-java. By default it cam with Zero port support which only works in
> > interpreter mode.
> >
> > I need to enable Shark support in that. Can any one please help me with
> the
> > procedure to compile JAVA with Shark support.
>
> zero is the best option you have. Shark wont work on ppc.
>
> >
> > --
> > Regards
> >
> > Sonia Verma
> >
> >
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>

--089e013c6220794c2804ea0c5613
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi Khem <br><br></div>Actually I&#39;m runn=
inng JAVA based Opendaylight controller on powerpc architecture with zero i=
neterpreter mode and it takes about 10 min to start.<br><br></div>On the an=
other hand when I run it on x-86 machine,in hardly takes few seconds to sta=
rt.<br>

<br>Board supporting java:<br>java version &quot;1.7.0_25&quot;<br>OpenJDK =
Runtime Environment (IcedTea 2.3.12) (25b30-2.3.12)<br>OpenJDK Zero VM (bui=
ld 23.7-b01, interpreted mode)<br>
<br>Java -version at x-86 is as follows..<br>java -version<br>java version =
&quot;1.7.0_25&quot;<br>OpenJDK Runtime Environment (IcedTea 2.3.10) (7u25-=
2.3.10-1ubuntu0.12.04.2)<br>OpenJDK Server VM (build 23.7-b01, mixed mode)<=
br>

<br>2013-10-31 01:00:03.508 UTC [Start Level Event Dispatcher] INFO=A0 o.o.=
c.s.binding.impl.BrokerActivator - Binding Aware Broker initialized<br>
osgi&gt; 2013-10-31 01:00:04.374 UTC [Start Level Event Dispatcher] INFO=A0=
 o.o.c.c.s.internal.<div>ClusterManager - I&#39;m a GossipRouter will liste=
n on 1<br>2013-10-31 01:00:04.611 UTC [Start Level Event Dispatcher] INFO=
=A0 o.o.c.c.s.internal.ClusterManager - Started GossipRouter<br>


GossipRouter started at Thu Oct 31 01:00:04 UTC 2013<br>Listening on port 1=
2001 bound on address <a href=3D"http://0.0.0.0/0.0.0.0" target=3D"_blank">=
0.0.0.0/0.0.0.0</a><br>Backlog is 1000, linger timeout is 2000, and read ti=
meout is 0<br>

2013-10-31 01:00:04.612 UTC [Start Level Event Dispatcher] INFO=A0 o.o.c.c.=
s.internal.ClusterManager - Starting the ClusterManager<br>
2013-10-31 01:00:13.639 UTC [Start Level Event Dispatcher] INFO=A0=20
o.o.c.c.i.ConfigurationService - ConfigurationService Manager init<br>2013-=
10-31 01:00:15.782 UTC [Start Level Event Dispatcher] INFO=A0 o.o.c.n.i.osg=
i.NetconfImplActivator - Starting TCP netconf server at /127.0.3<br>
Oct 31, 2013 1:00:17 AM org.apache.catalina.core.AprLifecycleListener init<=
br>INFO:
 The APR based Apache Tomcat Native library which allows optimal=20
performance in production environments was not found on the java.librarb<br=
>
Oct 31, 2013 1:00:22 AM org.apache.coyote.AbstractProtocol init<br>INFO: In=
itializing ProtocolHandler [&quot;http-bio-8080&quot;]<br>Oct 31, 2013 1:00=
:23 AM org.apache.catalina.mbeans.GlobalResourcesLifecycleListener createMB=
eans<br>


SEVERE: No global naming context defined for server<br>Oct 31, 2013 1:00:23=
 AM org.apache.catalina.core.StandardService startInternal<br>INFO: Startin=
g service Catalina<br>Oct 31, 2013 1:00:23 AM org.apache.catalina.core.Stan=
dardEngine startInternal<br>


INFO: Starting Servlet Engine: Apache Tomcat/7.0.32<br>Oct 31, 2013 1:00:23=
 AM org.apache.coyote.AbstractProtocol start<br>INFO: Starting ProtocolHand=
ler [&quot;http-bio-8080&quot;]<br>2013-10-31 01:01:46.580 UTC [ConfigPersi=
ster-registrator] INFO=A0 o.o.c.n.p.i.ConfigPersisterNotificationHandler - =
Session id received from net1<br>


2013-10-31 01:01:46.587 UTC [ConfigPersister-registrator] INFO=A0 o.o.c.n.p=
.i.ConfigPersisterNotificationHandler - No last config provided by b]<br>Oc=
t 31, 2013 1:02:08 AM org.apache.catalina.core.ApplicationContext log<br>


INFO: No Spring WebApplicationInitializer types detected on classpath<br>Oc=
t 31, 2013 1:02:09 AM org.apache.catalina.core.ApplicationContext log<br>IN=
FO: Initializing Spring FrameworkServlet &#39;Flows&#39;<br>Oct 31, 2013 1:=
02:35 AM com.sun.jersey.server.impl.application.WebApplicationImpl _initiat=
e<br>


INFO: Initiating Jersey application, version &#39;Jersey: 1.17 01/17/2013 0=
3:31 PM&#39;<br>Oct 31, 2013 1:02:35 AM com.sun.jersey.server.impl.applicat=
ion.DeferredResourceConfig$ApplicationHolder &lt;init&gt;<br>INFO: Instanti=
ated the Application class org.opendaylight.controller.northbound.commons.N=
orthboundApplication<br>


Oct 31, 2013 1:02:52 AM com.sun.jersey.server.impl.application.WebApplicati=
onImpl _initiate<br>INFO: Initiating Jersey application, version &#39;Jerse=
y: 1.17 01/17/2013 03:31 PM&#39;<br>Oct 31, 2013 1:02:52 AM com.sun.jersey.=
server.impl.application.DeferredResourceConfig$ApplicationHolder &lt;init&g=
t;<br>


INFO: Instantiated the Application class org.opendaylight.controller.northb=
ound.commons.NorthboundApplication<br>Oct 31, 2013 1:03:22 AM org.apache.ca=
talina.core.ApplicationContext log<br>INFO: No Spring WebApplicationInitial=
izer types detected on classpath<br>


Oct 31, 2013 1:03:23 AM org.apache.catalina.core.ApplicationContext log<br>=
INFO: Initializing Spring FrameworkServlet &#39;RootGUI&#39;<br>Oct 31, 201=
3 1:03:44 AM org.apache.catalina.core.ApplicationContext log<br>INFO: No Sp=
ring WebApplicationInitializer types detected on classpath<br>


Oct 31, 2013 1:03:44 AM org.apache.catalina.core.ApplicationContext log<br>=
INFO: Initializing Spring FrameworkServlet &#39;Devices&#39;<br>Oct 31, 201=
3 1:04:01 AM com.sun.jersey.server.impl.application.WebApplicationImpl _ini=
tiate<br>


INFO: Initiating Jersey application, version &#39;Jersey: 1.17 01/17/2013 0=
3:31 PM&#39;<br>Oct 31, 2013 1:04:01 AM com.sun.jersey.server.impl.applicat=
ion.DeferredResourceConfig$ApplicationHolder &lt;init&gt;<br>INFO: Instanti=
ated the Application class org.opendaylight.controller.northbound.commons.N=
orthboundApplication<br>


Oct 31, 2013 1:04:17 AM com.sun.jersey.server.impl.application.WebApplicati=
onImpl _initiate<br>INFO: Initiating Jersey application, version &#39;Jerse=
y: 1.17 01/17/2013 03:31 PM&#39;<br>Oct 31, 2013 1:04:17 AM com.sun.jersey.=
server.impl.application.DeferredResourceConfig$ApplicationHolder &lt;init&g=
t;<br>


INFO: Instantiated the Application class org.opendaylight.controller.northb=
ound.commons.NorthboundApplication<br>Oct 31, 2013 1:04:38 AM org.apache.ca=
talina.core.ApplicationContext log<br>INFO: No Spring WebApplicationInitial=
izer types detected on classpath<br>


Oct 31, 2013 1:04:38 AM org.apache.catalina.core.ApplicationContext log<br>=
INFO: Initializing Spring FrameworkServlet &#39;Troubleshoot&#39;<br>Oct 31=
, 2013 1:04:48 AM com.sun.jersey.server.impl.application.WebApplicationImpl=
 _initiate<br>


INFO: Initiating Jersey application, version &#39;Jersey: 1.17 01/17/2013 0=
3:31 PM&#39;<br>Oct 31, 2013 1:04:48 AM com.sun.jersey.server.impl.applicat=
ion.DeferredResourceConfig$ApplicationHolder &lt;init&gt;<br>INFO: Instanti=
ated the Application class org.opendaylight.controller.networkconfig.neutro=
n.northbound.NeutronNorthboundRSApplication<br>


Oct 31, 2013 1:05:05 AM com.sun.jersey.server.impl.application.WebApplicati=
onImpl _initiate<br>INFO: Initiating Jersey application, version &#39;Jerse=
y: 1.17 01/17/2013 03:31 PM&#39;<br>Oct 31, 2013 1:05:05 AM com.sun.jersey.=
server.impl.application.DeferredResourceConfig$ApplicationHolder &lt;init&g=
t;<br>


INFO: Instantiated the Application class org.opendaylight.controller.northb=
ound.commons.NorthboundApplication<br>Oct 31, 2013 1:05:21 AM com.sun.jerse=
y.server.impl.application.WebApplicationImpl _initiate<br>INFO: Initiating =
Jersey application, version &#39;Jersey: 1.17 01/17/2013 03:31 PM&#39;<br>


Oct 31, 2013 1:05:21 AM com.sun.jersey.server.impl.application.DeferredReso=
urceConfig$ApplicationHolder &lt;init&gt;<br>INFO: Instantiated the Applica=
tion class org.opendaylight.controller.northbound.commons.NorthboundApplica=
tion<br>


Oct 31, 2013 1:05:45 AM org.apache.catalina.core.ApplicationContext log<br>=
INFO: No Spring WebApplicationInitializer types detected on classpath<br>Oc=
t 31, 2013 1:05:45 AM org.apache.catalina.core.ApplicationContext log<br>


INFO: Initializing Spring FrameworkServlet &#39;Topology&#39;<br>2013-10-31=
 01:05:48.392 UTC [Start Level Event Dispatcher] INFO=A0 o.o.c.s.t.provider=
.ToasterProvider - Provider Session initialized<br>Oct 31, 2013 1:06:03 AM =
com.sun.jersey.server.impl.application.WebApplicationImpl _initiate<br>


INFO: Initiating Jersey application, version &#39;Jersey: 1.17 01/17/2013 0=
3:31 PM&#39;<br>Oct 31, 2013 1:06:03 AM com.sun.jersey.server.impl.applicat=
ion.DeferredResourceConfig$ApplicationHolder &lt;init&gt;<br>INFO: Instanti=
ated the Application class org.opendaylight.controller.northbound.commons.N=
orthboundApplication<br>


2013-10-31 01:06:06.154 UTC [ControllerI/O Thread] INFO=A0 o.o.c.p.o.core.i=
nternal.ControllerIO - Controller is now listening on any:6633<br>2013-10-3=
1 01:06:07.050 UTC [ControllerI/O Thread] INFO=A0 o.o.c.p.o.core.internal.C=
ontroller - Switch:<a href=3D"http://192.168.6.123:56750" target=3D"_blank"=
>192.168.6.123:56750</a> is connected to the r<br>


Oct 31, 2013 1:06:07 AM com.sun.jersey.server.impl.application.WebApplicati=
onImpl _initiate<br>INFO: Initiating Jersey application, version &#39;Jerse=
y: 1.17 01/17/2013 03:31 PM&#39;<br>Oct 31, 2013 1:06:07 AM com.sun.jersey.=
server.impl.application.DeferredResourceConfig$ApplicationHolder &lt;init&g=
t;<br>


INFO: Instantiated the Application class org.opendaylight.controller.contai=
nermanager.northbound.ContainerManagerNorthboundRSApplication<br>2013-10-31=
 01:06:10.563 UTC [ControllerI/O Thread] INFO=A0 o.o.c.p.o.core.internal.Co=
ntroller - Switch:<a href=3D"http://192.168.6.137:52815" target=3D"_blank">=
192.168.6.137:52815</a> is connected to the r<br>


2013-10-31 01:06:12.369 UTC [pool-13-thread-1] INFO=A0 o.o.c.f.i.Forwarding=
RulesManager - Forwarding mode for node OF|00:00:00:04:9f:02:a3:e3 se<br>20=
13-10-31 01:06:12.371 UTC [pool-13-thread-1] WARN=A0 o.o.c.f.i.ForwardingRu=
lesManager - Failed to remove Proactive Static flow: __Punt ARP__<br>


2013-10-31 01:06:12.372 UTC [pool-13-thread-1] WARN=A0 o.o.c.f.i.Forwarding=
RulesManager - Failed to remove Proactive Static flow: __Punt LLDP__<br>201=
3-10-31 01:06:12.373 UTC [pool-13-thread-1] WARN=A0 o.o.c.f.i.ForwardingRul=
esManager - Failed to remove Proactive Static flow: __Catch-All D_<br>


2013-10-31 01:06:12.753 UTC [fileinstall-./plugins] INFO=A0 o.o.c.s.l.i.Loa=
dBalancerService - Running container name:default<br>2013-10-31 01:06:12.75=
6 UTC [fileinstall-./plugins] INFO=A0 o.o.c.s.l.i.LoadBalancerService - Con=
figManager [vips=3D{}, pools=3D{}]<br>


Oct 31, 2013 1:06:20 AM com.sun.jersey.server.impl.application.WebApplicati=
onImpl _initiate<br>INFO: Initiating Jersey application, version &#39;Jerse=
y: 1.17 01/17/2013 03:31 PM&#39;<br>Oct 31, 2013 1:06:20 AM com.sun.jersey.=
server.impl.application.DeferredResourceConfig$ApplicationHolder &lt;init&g=
t;<br>


INFO: Instantiated the Application class org.opendaylight.controller.northb=
ound.commons.NorthboundApplication<br>Oct 31, 2013 1:06:27 AM com.sun.jerse=
y.server.impl.application.WebApplicationImpl _initiate<br>INFO: Initiating =
Jersey application, version &#39;Jersey: 1.17 01/17/2013 03:31 PM&#39;<br>


Oct 31, 2013 1:06:27 AM com.sun.jersey.server.impl.application.DeferredReso=
urceConfig$ApplicationHolder &lt;init&gt;<br>INFO: Instantiated the Applica=
tion class org.opendaylight.controller.northbound.commons.NorthboundApplica=
tion.<br>
<br></div>I have read that enabling shark would speed up the process. Pleas=
e help in tackling the above issue<br><br><br></div>Thanks<br><div><div><br=
>=A0<br>
</div></div></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_qu=
ote">On Thu, Oct 31, 2013 at 9:56 PM, Khem Raj <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt=
;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5">On T=
hu, Oct 31, 2013 at 8:08 AM, sonia verma &lt;<a href=3D"mailto:soniaverma97=
27@gmail.com">soniaverma9727@gmail.com</a>&gt; wrote:<br>

&gt; Hi ALL,<br>
&gt;<br>
&gt; I have integrated Java in one of the board having Powerpc architecture=
 using<br>
&gt; meta-java. By default it cam with Zero port support which only works i=
n<br>
&gt; interpreter mode.<br>
&gt;<br>
&gt; I need to enable Shark support in that. Can any one please help me wit=
h the<br>
&gt; procedure to compile JAVA with Shark support.<br>
<br>
</div></div>zero is the best option you have. Shark wont work on ppc.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
&gt;<br>
&gt; --<br>
&gt; Regards<br>
&gt;<br>
&gt; Sonia Verma<br>
&gt;<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_b=
lank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
</font></span></blockquote></div><br></div>

--089e013c6220794c2804ea0c5613--
